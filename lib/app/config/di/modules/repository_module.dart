
import 'package:bloc_base/data/repositories/country_repository_impl.dart';
import 'package:bloc_base/domain/repositories/country_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RepositoryModule {
  @LazySingleton(as: CountryRepository)
  CountryRepositoryImpl get characterRepository;
}
