// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:radio_app/src/core/di/di_module.dart' as _i9;
import 'package:radio_app/src/core/navigation/router/router.dart' as _i5;
import 'package:radio_app/src/data/providers/radio_browser_api.dart' as _i6;
import 'package:radio_app/src/domain/repositories/radio_browser_repository.dart'
    as _i8;
import 'package:radio_app/src/presentation/radio/bloc/radio_bloc.dart' as _i7;
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
    gh.singleton<_i3.RadioPlayer>(() => radioPlayerProvider.radioPlayer());
    gh.singleton<_i4.Dio>(() => dioProvider.dio());
    gh.lazySingleton<_i5.ClientRouter>(() => _i5.ClientRouter());
    gh.lazySingleton<_i6.RadioBrowserApi>(() => _i6.RadioBrowserApi(
          gh<_i4.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrlV1'),
        ));
    gh.factory<_i7.RadioBloc>(() => _i7.RadioBloc(gh<_i3.RadioPlayer>()));
    gh.factory<_i8.RadioBrowserRepository>(
        () => _i8.RadioBrowserRepository(gh<_i6.RadioBrowserApi>()));
    return this;
  }
}

class _$RadioPlayerProvider extends _i9.RadioPlayerProvider {}

class _$DioProvider extends _i9.DioProvider {}
