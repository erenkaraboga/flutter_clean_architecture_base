import 'package:freezed_annotation/freezed_annotation.dart';

part 'flags_model.freezed.dart';

part 'flags_model.g.dart';

@freezed
class FlagsModel with _$FlagsModel {
  const factory FlagsModel({
    String? png
  }) = _FlagsModel;

  factory FlagsModel.fromJson(Map<String, dynamic> json) => _$FlagsModelFromJson(json);
}
