import 'package:injectable/injectable.dart';
import '../../../../presentation/countries/countries_bloc.dart';

@module
abstract class BlocModule {
  @injectable
  CountriesBloc get countriesBloc;
}
