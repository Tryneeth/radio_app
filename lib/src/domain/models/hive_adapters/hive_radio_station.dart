import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';

part 'hive_radio_station.g.dart';

@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'RadioStationAdapter')
class HiveRadioStation extends HiveObject {
  HiveRadioStation({
    required this.id,
    required this.name,
    required this.url,
    required this.country,
    required this.countrycode,
    this.favicon,
  });

  factory HiveRadioStation.fromJson(Map<String, dynamic> json) =>
      _$HiveRadioStationFromJson(json);

  factory HiveRadioStation.fromModel(RadioStation model) => HiveRadioStation(
        id: model.id,
        name: model.name,
        url: model.url,
        country: model.country,
        countrycode: model.countrycode,
        favicon: model.favicon,
      );

  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String url;
  @HiveField(3)
  String country;
  @HiveField(4)
  String countrycode;
  @HiveField(5)
  String? favicon;

  Map<String, dynamic> toJson() => _$HiveRadioStationToJson(this);

  RadioStation toModel() => RadioStation(
        id: id,
        name: name,
        url: url,
        country: country,
        countrycode: countrycode,
        favicon: favicon,
      );
}
