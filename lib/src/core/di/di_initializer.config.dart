// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:radio_app/src/core/di/di_module.dart' as _i6;
import 'package:radio_app/src/core/navigation/router/router.dart' as _i4;
import 'package:radio_app/src/presentation/radio/bloc/radio_bloc.dart' as _i5;
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
    gh.singleton<_i3.RadioPlayer>(() => radioPlayerProvider.radioPlayer());
    gh.lazySingleton<_i4.ClientRouter>(() => _i4.ClientRouter());
    gh.factory<_i5.RadioBloc>(() => _i5.RadioBloc(gh<_i3.RadioPlayer>()));
    return this;
  }
}

class _$RadioPlayerProvider extends _i6.RadioPlayerProvider {}
