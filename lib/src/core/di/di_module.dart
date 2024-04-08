import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
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
