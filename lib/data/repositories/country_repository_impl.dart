import 'package:bloc_base/data/api_services/country_api_service.dart';
import 'package:bloc_base/data/models/country_model.dart';
import 'package:bloc_base/domain/repositories/country_repository.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryApiService countryApiService;

  CountryRepositoryImpl(this.countryApiService);

  @override
  Future<List<CountryModel>> getCountries() =>
      countryApiService.getCountries();
}
