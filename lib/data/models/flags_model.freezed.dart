// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flags_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlagsModel _$FlagsModelFromJson(Map<String, dynamic> json) {
  return _FlagsModel.fromJson(json);
}

/// @nodoc
mixin _$FlagsModel {
  String? get png => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagsModelCopyWith<FlagsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsModelCopyWith<$Res> {
  factory $FlagsModelCopyWith(
          FlagsModel value, $Res Function(FlagsModel) then) =
      _$FlagsModelCopyWithImpl<$Res, FlagsModel>;
  @useResult
  $Res call({String? png});
}

/// @nodoc
class _$FlagsModelCopyWithImpl<$Res, $Val extends FlagsModel>
    implements $FlagsModelCopyWith<$Res> {
  _$FlagsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = freezed,
  }) {
    return _then(_value.copyWith(
      png: freezed == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlagsModelImplCopyWith<$Res>
    implements $FlagsModelCopyWith<$Res> {
  factory _$$FlagsModelImplCopyWith(
          _$FlagsModelImpl value, $Res Function(_$FlagsModelImpl) then) =
      __$$FlagsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? png});
}

/// @nodoc
class __$$FlagsModelImplCopyWithImpl<$Res>
    extends _$FlagsModelCopyWithImpl<$Res, _$FlagsModelImpl>
    implements _$$FlagsModelImplCopyWith<$Res> {
  __$$FlagsModelImplCopyWithImpl(
      _$FlagsModelImpl _value, $Res Function(_$FlagsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = freezed,
  }) {
    return _then(_$FlagsModelImpl(
      png: freezed == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlagsModelImpl implements _FlagsModel {
  const _$FlagsModelImpl({this.png});

  factory _$FlagsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlagsModelImplFromJson(json);

  @override
  final String? png;

  @override
  String toString() {
    return 'FlagsModel(png: $png)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagsModelImpl &&
            (identical(other.png, png) || other.png == png));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, png);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagsModelImplCopyWith<_$FlagsModelImpl> get copyWith =>
      __$$FlagsModelImplCopyWithImpl<_$FlagsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlagsModelImplToJson(
      this,
    );
  }
}

abstract class _FlagsModel implements FlagsModel {
  const factory _FlagsModel({final String? png}) = _$FlagsModelImpl;

  factory _FlagsModel.fromJson(Map<String, dynamic> json) =
      _$FlagsModelImpl.fromJson;

  @override
  String? get png;
  @override
  @JsonKey(ignore: true)
  _$$FlagsModelImplCopyWith<_$FlagsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
