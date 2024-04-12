import 'package:either_dart/either.dart';
import 'package:radio_app/src/domain/models/hive_adapters/hive_radio_station.dart';
import 'package:radio_app/src/domain/repositories/radio_favorites_repository.dart';

class GetSingleFavoriteStationUsecase {
  GetSingleFavoriteStationUsecase(this._repository);

  final RadioFavoritesRepository _repository;

  Future<Either<Exception, HiveRadioStation?>> call(String id) =>
      _repository.getStationById(id);
}
