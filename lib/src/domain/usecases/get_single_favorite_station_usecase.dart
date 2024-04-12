import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/domain/repositories/radio_favorites_repository.dart';

@injectable
class GetSingleFavoriteStationUsecase {
  GetSingleFavoriteStationUsecase(this._repository);

  final RadioFavoritesRepository _repository;

  Future<Either<Exception, RadioStation?>> call(String id) =>
      _repository.getStationById(id).mapRight((right) => right?.toModel());
}
