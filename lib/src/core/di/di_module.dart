import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:radio_app/src/domain/models/hive_adapters/hive_radio_station.dart';
import 'package:radio_player/radio_player.dart';

@module
abstract class RadioPlayerProvider {
  @singleton
  RadioPlayer radioPlayer() => RadioPlayer();
}

@module
abstract class DioProvider {
  @singleton
  Dio dio() {
    Dio dio = Dio();
    return dio
      ..interceptors.addAll([
        if (kDebugMode)
          PrettyDioLogger(
            responseBody: true,
            requestBody: true,
          ),
      ]);
  }
}

@module
abstract class LoggerProvider {
  @singleton
  Logger logger() {
    Logger logger = Logger();
    return logger;
  }
}

@module
abstract class HiveIntervaceProvider {
  @singleton
  HiveInterface hive() => Hive
    ..registerAdapter<HiveRadioStation>(
      RadioStationAdapter(),
    );
}
