import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:radio_app/src/core/navigation/router/router.dart';
import 'package:radio_app/src/presentation/navigators/radio_browser_navigator.dart';

@Injectable(as: RadioBrowserNavigator)
class ClientRadioBrowserNavigator implements RadioBrowserNavigator {
  const ClientRadioBrowserNavigator(this._router);

  final ClientRouter _router;

  @override
  FutureOr<void> openRadioStation(String url) => _router.push(RadioRoute(url: url));
}
