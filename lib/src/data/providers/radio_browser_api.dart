import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/core/enum/di_parameter_name.dart';
import 'package:radio_app/src/data/dto/radio_station_response.dart';
import 'package:radio_app/src/data/dto/search_request.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'radio_browser_api.g.dart';

@lazySingleton
@RestApi()
abstract class RadioBrowserApi {
  @factoryMethod
  factory RadioBrowserApi(
    Dio dio, {
    @Named(ApiDiParameterName.baseUrlV1) String baseUrl,
  }) = _RadioBrowserApi;

  @POST('/json/stations/search')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<List<RadioStationResponse>> searchByCountryCode({
    @Body() required SearchRequest requestSearch,
  });
}
