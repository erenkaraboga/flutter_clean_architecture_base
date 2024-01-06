import 'package:bloc_base/data/models/country_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'country_api_service.g.dart';

@RestApi()
abstract class CountryApiService {
  factory CountryApiService(Dio dio, {String baseUrl}) = _CountryApiService;
  @GET("name/tu")
  Future<List<CountryModel>> getCountries();
}
