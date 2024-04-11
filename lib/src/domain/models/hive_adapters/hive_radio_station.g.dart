// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_radio_station.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RadioStationAdapter extends TypeAdapter<HiveRadioStation> {
  @override
  final int typeId = 0;

  @override
  HiveRadioStation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveRadioStation(
      id: fields[0] as String,
      name: fields[1] as String,
      url: fields[2] as String,
      country: fields[3] as String,
      countrycode: fields[4] as String,
      favicon: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveRadioStation obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.countrycode)
      ..writeByte(5)
      ..write(obj.favicon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RadioStationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HiveRadioStation _$HiveRadioStationFromJson(Map<String, dynamic> json) =>
    HiveRadioStation(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      country: json['country'] as String,
      countrycode: json['countrycode'] as String,
      favicon: json['favicon'] as String?,
    );

Map<String, dynamic> _$HiveRadioStationToJson(HiveRadioStation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'country': instance.country,
      'countrycode': instance.countrycode,
      'favicon': instance.favicon,
    };
