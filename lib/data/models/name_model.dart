import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_model.freezed.dart';

part 'name_model.g.dart';

@freezed
class NameModel with _$NameModel {
  const factory NameModel({
    String? common,
    String? official
  }) = _NameModel;

  factory NameModel.fromJson(Map<String, dynamic> json) => _$NameModelFromJson(json);
}
