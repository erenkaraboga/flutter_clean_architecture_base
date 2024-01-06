
import 'package:bloc_base/data/models/country_model.dart';
import 'package:bloc_base/domain/repositories/country_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../utils/bloc_common.dart';
part 'countries_bloc.freezed.dart';
@freezed
class CountriesState with _$CountriesState{
  const factory CountriesState({
    @Default(StateType.initial) StateType stateType,
    @Default([]) List<CountryModel> countryList,
    @Default("") String error,
  }) = _CountriesState ;
}

  class  CountriesBloc extends Cubit<CountriesState> {
    final CountryRepository _countryRepository;
    CountriesBloc(this._countryRepository) : super( const CountriesState());

    Future<void> getCountries() async {
      emit(state.copyWith(stateType: StateType.loading));
      try {
        final response = await _countryRepository.getCountries();
        final items = response;
        emit(state.copyWith(stateType: StateType.success, countryList: items));
      } on Exception catch (e) {
        emit(state.copyWith(stateType: StateType.error, error: "Error"));
      }
    }
  }
