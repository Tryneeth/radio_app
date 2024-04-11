import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio_station_response.freezed.dart';
part 'radio_station_response.g.dart';

@Freezed(toJson: false)
class RadioStationResponse with _$RadioStationResponse {
  factory RadioStationResponse({
    required String stationuuid,
    required String name,
    required String url,
    @JsonKey(name: 'url_resolved') String? urlResolved,
    String? homepage,
    String? favicon,
    String? tags,
    required String country,
    required String countrycode,
    String? language,
  }) = _RadioStationResponse;

  factory RadioStationResponse.fromJson(Map<String, dynamic> json) =>
      _$RadioStationResponseFromJson(json);
}
