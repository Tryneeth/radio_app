import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/domain/repositories/radio_favorites_repository.dart';

@injectable
class SaveFavoriteRadioStationUsecase {
  SaveFavoriteRadioStationUsecase(this._repository);

  final RadioFavoritesRepository _repository;

  Future<Either<Exception, void>> call(RadioStation station) =>
      _repository.saveFavStation(station);
}
