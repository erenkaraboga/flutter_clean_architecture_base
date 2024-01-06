import 'package:bloc_base/data/models/country_model.dart';


abstract class CountryRepository {
  Future<List<CountryModel>> getCountries();
}
