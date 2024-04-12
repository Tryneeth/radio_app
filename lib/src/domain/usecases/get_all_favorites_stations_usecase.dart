import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/domain/repositories/radio_favorites_repository.dart';

@injectable
class GetAllFavoritesStationsUsecase {
  GetAllFavoritesStationsUsecase(this._repository);

  final RadioFavoritesRepository _repository;

  Future<Either<Exception, List<RadioStation>>> call() =>
      _repository.getFavStations().mapRight(
            (right) => right.map((e) => e.toModel()).toList(),
          );
}
