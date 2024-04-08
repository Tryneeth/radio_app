import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:radio_app/src/core/di/di_initializer.config.dart';
import 'package:radio_app/src/core/enum/di_parameter_name.dart';

final getIt = GetIt.instance;

@injectableInit
void appDIInitializer() => getIt
  ..registerSingleton(
    'https://at1.api.radio-browser.info/',
    instanceName: ApiDiParameterName.baseUrlV1,
  )
  ..init();
