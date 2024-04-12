import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import 'package:radio_app/src/core/di/di_initializer.dart';
import 'package:radio_app/src/data/dto/search_request.dart';
import 'package:radio_app/src/data/providers/radio_favorites_hive.dart';
import 'package:radio_app/src/domain/models/hive_adapters/hive_radio_station.dart';
import 'package:radio_app/src/presentation/favorites/favorites_page.dart';
import 'package:radio_app/src/presentation/navigators/radio_browser_navigator.dart';
import 'package:radio_app/src/presentation/radio/radio_page.dart';

import 'utils/dummy_app.dart';
import 'utils/extensions.dart';
import 'utils/mocks.dart';
import 'utils/mocks.mocks.dart';

void main() {
  const subDir = 'radio';
  final mockedNavigator = MockRadioBrowserNavigator();
  final mockedHiveFavorites = MockRadioFavoritesHive();

  final dio = Dio(BaseOptions(baseUrl: baseUrl));
  late final DioAdapter dioAdapter;
  dioAdapter = DioAdapter(dio: dio);

  setUpAll(() async => initTests(subDir));

  tearDownAll(() => deleteHiveTestingDirectory(subDir));

  setUp(() {
    dio.httpClientAdapter = dioAdapter;

    dioAdapter.onPost(
      searchPath,
      data: SearchRequest(
        offset: 0,
        limit: 20,
        countryCode: 'US',
        hideBroken: true,
        order: 'clickcount',
        reverse: true,
      ),
      (request) => request.reply(200, jsonDecode(stations)),
    );

    getIt
      ..replaceSingleton<RadioFavoritesHive>(mockedHiveFavorites)
      ..replaceSingleton<RadioBrowserNavigator>(mockedNavigator)
      ..replaceSingleton<Dio>(dio);
  });

  testWidgets('Radio Station is saved as favorite',
      (WidgetTester tester) async {
    when(
      () => mockedHiveFavorites.put(
        mockStation.id,
        HiveRadioStation.fromModel(mockStation),
      ),
    );

    await tester.pumpWidget(
      DummyApp(
        child: RadioPage(
          station: mockStation,
        ),
      ),
    );
    await tester.pumpAndSettle();

    final favIcon = find.byIcon(Icons.favorite_border_outlined);
    expect(favIcon, findsOne);
    await tester.tap(favIcon);

    await tester.pumpAndSettle();

    expect(favIcon, findsNothing);
    expect(find.byIcon(Icons.favorite), findsOne);
  });

  testWidgets('Radio Station is removed as favorite',
      (WidgetTester tester) async {
    when(
      () => mockedHiveFavorites.put(
        mockStation.id,
        HiveRadioStation.fromModel(mockStation),
      ),
    );

    await tester.pumpWidget(
      DummyApp(
        child: RadioPage(
          station: mockStation,
        ),
      ),
    );
    await tester.pumpAndSettle();

    final favIconOutlined = find.byIcon(Icons.favorite_border_outlined);
    expect(favIconOutlined, findsOne);
    await tester.tap(favIconOutlined);

    await tester.pumpAndSettle();

    expect(favIconOutlined, findsNothing);
    final favIcon = find.byIcon(Icons.favorite);
    expect(favIcon, findsOne);
    await tester.tap(favIcon);

    await tester.pumpAndSettle();

    verify(mockedHiveFavorites.delete(mockStation.id));

    expect(favIconOutlined, findsOne);
  });

  testWidgets('Radio Station favorites list is loaded',
      (WidgetTester tester) async {
    when(mockedHiveFavorites.values).thenAnswer(
      (_) async => [
        HiveRadioStation.fromModel(mockStation),
      ],
    );

    await mockNetworkImages(
      () async {
        await tester.pumpWidget(const DummyApp(child: FavoritesPage()));
        await tester.pumpAndSettle();
      },
    );

    expect(find.text('Favorites'), findsOne);

    final station = find.text('Radio Paradise (320k)');
    expect(station, findsOne);
    await tester.tap(station);

    verify(mockedNavigator.openRadioStation(mockStation));
  });
}
