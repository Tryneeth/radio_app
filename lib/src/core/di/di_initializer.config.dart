// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:radio_app/src/core/di/di_module.dart' as _i16;
import 'package:radio_app/src/core/navigation/navigators/radio_browser_navigator.dart'
    as _i10;
import 'package:radio_app/src/core/navigation/router/router.dart' as _i7;
import 'package:radio_app/src/data/providers/radio_browser_api.dart' as _i8;
import 'package:radio_app/src/domain/models/radio_station.dart' as _i13;
import 'package:radio_app/src/domain/repositories/radio_browser_repository.dart'
    as _i11;
import 'package:radio_app/src/domain/usecases/get_radio_stations_by_country_code.dart'
    as _i14;
import 'package:radio_app/src/presentation/navigators/radio_browser_navigator.dart'
    as _i9;
import 'package:radio_app/src/presentation/radio/bloc/radio_bloc.dart' as _i12;
import 'package:radio_app/src/presentation/radio_browser/bloc/radio_browser_bloc.dart'
    as _i15;
import 'package:radio_player/radio_player.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final radioPlayerProvider = _$RadioPlayerProvider();
    final dioProvider = _$DioProvider();
    final loggerProvider = _$LoggerProvider();
    final hiveIntervaceProvider = _$HiveIntervaceProvider();
    gh.singleton<_i3.RadioPlayer>(() => radioPlayerProvider.radioPlayer());
    gh.singleton<_i4.Dio>(() => dioProvider.dio());
    gh.singleton<_i5.Logger>(() => loggerProvider.logger());
    gh.singleton<_i6.HiveInterface>(() => hiveIntervaceProvider.hive());
    gh.lazySingleton<_i7.ClientRouter>(() => _i7.ClientRouter());
    gh.lazySingleton<_i8.RadioBrowserApi>(() => _i8.RadioBrowserApi(
          gh<_i4.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrlV1'),
        ));
    gh.factory<_i9.RadioBrowserNavigator>(
        () => _i10.ClientRadioBrowserNavigator(gh<_i7.ClientRouter>()));
    gh.factory<_i11.RadioBrowserRepository>(
        () => _i11.RadioBrowserRepository(gh<_i8.RadioBrowserApi>()));
    gh.factoryParam<_i12.RadioBloc, _i13.RadioStation, dynamic>((
      station,
      _,
    ) =>
        _i12.RadioBloc(
          gh<_i3.RadioPlayer>(),
          station,
        ));
    gh.factory<_i14.GetRadioStationsByCountryCode>(() =>
        _i14.GetRadioStationsByCountryCode(gh<_i11.RadioBrowserRepository>()));
    gh.factory<_i15.RadioBrowserBloc>(() => _i15.RadioBrowserBloc(
          gh<_i14.GetRadioStationsByCountryCode>(),
          gh<_i9.RadioBrowserNavigator>(),
        ));
    return this;
  }
}

class _$RadioPlayerProvider extends _i16.RadioPlayerProvider {}

class _$DioProvider extends _i16.DioProvider {}

class _$LoggerProvider extends _i16.LoggerProvider {}

class _$HiveIntervaceProvider extends _i16.HiveIntervaceProvider {}
