import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/data/providers/radio_favorites_hive.dart';
import 'package:radio_app/src/domain/models/hive_adapters/hive_radio_station.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/utils/repository_helper_mixin.dart';

@injectable
class RadioFavoritesRepository with RepositoryHelperMixin {
  RadioFavoritesRepository(this._hive);

  final RadioFavoritesHive _hive;

  Future<Either<Exception, List<HiveRadioStation>>> getFavStations() async =>
      fromAsync(() => _hive.values.then((value) => value?.toList() ?? []));

  Future<Either<Exception, HiveRadioStation?>> getStationById(
    String id,
  ) async =>
      fromAsync(() => _hive.get(id));

  Future<Either<Exception, void>> saveFavStation(RadioStation station) {
    final hiveFavStation = HiveRadioStation.fromModel(station);
    return fromAsync(() => _hive.put(hiveFavStation.id, hiveFavStation));
  }

  Future<Either<Exception, void>> removeFavStation(String stationId) =>
      fromAsync(() => _hive.delete(stationId));
}
