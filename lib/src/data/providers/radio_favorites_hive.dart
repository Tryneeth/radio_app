import 'package:injectable/injectable.dart';
import 'package:radio_app/src/core/enum/di_parameter_name.dart';
import 'package:radio_app/src/domain/models/hive_adapters/hive_radio_station.dart';
import 'package:radio_app/src/utils/core_hive_repository.dart';

@singleton
class RadioFavoritesHive extends CoreHiveProvider<HiveRadioStation> {
  RadioFavoritesHive(@Named(ApiDiParameterName.favoritesHiveId) super.name);
}
