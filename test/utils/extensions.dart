import 'package:get_it/get_it.dart';

extension GetItX on GetIt {
  Future<T> replaceSingleton<T extends Object>(
    T instance, {
    String? instanceName,
  }) async {
    if (isRegistered<T>(instanceName: instanceName)) {
      unregister<T>(instanceName: instanceName);
    }
    registerSingleton<T>(instance, instanceName: instanceName);
    return instance;
  }
}