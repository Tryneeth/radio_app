import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/domain/repositories/radio_browser_repository.dart';

@injectable
class GetRadioStationsByCountryCode {
  const GetRadioStationsByCountryCode(this._repository);

  final RadioBrowserRepository _repository;

  Future<Either<Exception, List<RadioStation>>> call(
    String countryCode, {
    int? offset,
    int? limit,
  }) =>
      _repository.searchByCountryCode(
        countryCode,
        offset: offset,
        limit: limit,
      );
}
