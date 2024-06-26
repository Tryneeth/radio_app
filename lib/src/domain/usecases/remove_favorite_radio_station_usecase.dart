import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/domain/repositories/radio_favorites_repository.dart';

@injectable
class RemoveFavoriteRadioStationUsecase {
  RemoveFavoriteRadioStationUsecase(this._repository);

  final RadioFavoritesRepository _repository;

  Future<Either<Exception, void>> call(String id) =>
      _repository.removeFavStation(id);
}
