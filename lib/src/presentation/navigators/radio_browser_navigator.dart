import 'dart:async';

import 'package:radio_app/src/domain/models/radio_station.dart';

abstract class RadioBrowserNavigator {
  FutureOr<void> openRadioStation(RadioStation station);
}
