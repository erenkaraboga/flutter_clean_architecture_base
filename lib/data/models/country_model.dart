import 'package:bloc_base/data/models/flags_model.dart';
import 'package:bloc_base/data/models/name_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';

part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    NameModel? name,
    FlagsModel? flags
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);
}
