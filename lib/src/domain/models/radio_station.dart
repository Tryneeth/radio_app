import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_app/src/data/dto/radio_station_response.dart';

part 'radio_station.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class RadioStation with _$RadioStation {
  factory RadioStation({
    required String id,
    required String name,
    required String url,
    required String country,
    required String countrycode,
  }) = _RadioStation;

  factory RadioStation.fromResponse(RadioStationResponse response) =>
      RadioStation(
        id: response.stationuuid,
        name: response.name,
        url: response.url,
        country: response.country,
        countrycode: response.countrycode,
      );
}
