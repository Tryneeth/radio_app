import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:radio_app/src/core/di/di_initializer.config.dart';

final getIt = GetIt.instance;

@injectableInit
void appDIInitializer() => getIt.init();
