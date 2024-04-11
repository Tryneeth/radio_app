import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/data/dto/search_request.dart';
import 'package:radio_app/src/data/providers/radio_browser_api.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/utils/repository_helper_mixin.dart';

@injectable
class RadioBrowserRepository with RepositoryHelperMixin {
  RadioBrowserRepository(this._api);

  final RadioBrowserApi _api;

  Future<Either<Exception, List<RadioStation>>> searchByCountryCode(
    String countryCode, {
    int? offset,
    int? limit,
  }) async =>
      fromAsync(
        () => _api
            .searchByCountryCode(
              requestSearch: SearchRequest(
                countryCode: countryCode,
                offset: offset ?? 0,
                limit: limit ?? 20,
              ),
            )
            .then(
              (response) =>
                  response.map((e) => RadioStation.fromResponse(e)).toList(),
            ),
      );
}
