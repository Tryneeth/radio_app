import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import 'package:radio_app/src/core/di/di_initializer.dart';
import 'package:radio_app/src/data/dto/search_request.dart';
import 'package:radio_app/src/presentation/navigators/radio_browser_navigator.dart';
import 'package:radio_app/src/presentation/radio_browser/radio_browser_page.dart';

import 'utils/dummy_app.dart';
import 'utils/extensions.dart';
import 'utils/mocks.dart';
import 'utils/mocks.mocks.dart';

void main() {
  const subDir = 'browser';
  final dio = Dio(BaseOptions(baseUrl: baseUrl));
  late final DioAdapter dioAdapter;
  dioAdapter = DioAdapter(dio: dio);

  final mockedNavigator = MockRadioBrowserNavigator();

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
      ..replaceSingleton<RadioBrowserNavigator>(mockedNavigator)
      ..replaceSingleton<Dio>(dio);
  });

  testWidgets('Radio list is loaded', (WidgetTester tester) async {
    await mockNetworkImages(
      () async {
        await tester.pumpWidget(const DummyApp(child: RadioBrowserPage()));
        await tester.pumpAndSettle();
      },
    );

    expect(find.byType(ListTile), findsNWidgets(3));

    expect(find.text('Radio Paradise (320k)'), findsOne);
    expect(find.text('101 SMOOTH JAZZ'), findsOne);
    expect(find.text('Classic Vinyl HD'), findsOne);
  });

  testWidgets('Radio Station screen is opened', (WidgetTester tester) async {
    await mockNetworkImages(
      () async {
        await tester.pumpWidget(const DummyApp(child: RadioBrowserPage()));
        await tester.pumpAndSettle();
      },
    );

    final station = find.text('Radio Paradise (320k)');
    expect(station, findsOne);
    await tester.tap(station);

    verify(mockedNavigator.openRadioStation(mockStation));
  });

  testWidgets('Radio favorites screen is opened', (WidgetTester tester) async {
    await mockNetworkImages(
      () async {
        await tester.pumpWidget(
          const DummyApp(
            child: RadioBrowserPage(),
          ),
        );
        await tester.pumpAndSettle();
      },
    );

    final favIcon = find.byIcon(Icons.favorite);
    expect(favIcon, findsOne);
    await tester.tap(favIcon);

    verify(mockedNavigator.openFavorites());
  });
}
