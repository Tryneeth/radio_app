import 'package:injectable/injectable.dart';
import 'package:radio_player/radio_player.dart';

@module
abstract class RadioPlayerProvider {
  @singleton
  RadioPlayer radioPlayer() => RadioPlayer();
}
