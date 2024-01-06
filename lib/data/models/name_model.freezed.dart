// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NameModel _$NameModelFromJson(Map<String, dynamic> json) {
  return _NameModel.fromJson(json);
}

/// @nodoc
mixin _$NameModel {
  String? get common => throw _privateConstructorUsedError;
  String? get official => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameModelCopyWith<NameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameModelCopyWith<$Res> {
  factory $NameModelCopyWith(NameModel value, $Res Function(NameModel) then) =
      _$NameModelCopyWithImpl<$Res, NameModel>;
  @useResult
  $Res call({String? common, String? official});
}

/// @nodoc
class _$NameModelCopyWithImpl<$Res, $Val extends NameModel>
    implements $NameModelCopyWith<$Res> {
  _$NameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = freezed,
    Object? official = freezed,
  }) {
    return _then(_value.copyWith(
      common: freezed == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameModelImplCopyWith<$Res>
    implements $NameModelCopyWith<$Res> {
  factory _$$NameModelImplCopyWith(
          _$NameModelImpl value, $Res Function(_$NameModelImpl) then) =
      __$$NameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? common, String? official});
}

/// @nodoc
class __$$NameModelImplCopyWithImpl<$Res>
    extends _$NameModelCopyWithImpl<$Res, _$NameModelImpl>
    implements _$$NameModelImplCopyWith<$Res> {
  __$$NameModelImplCopyWithImpl(
      _$NameModelImpl _value, $Res Function(_$NameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = freezed,
    Object? official = freezed,
  }) {
    return _then(_$NameModelImpl(
      common: freezed == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameModelImpl implements _NameModel {
  const _$NameModelImpl({this.common, this.official});

  factory _$NameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameModelImplFromJson(json);

  @override
  final String? common;
  @override
  final String? official;

  @override
  String toString() {
    return 'NameModel(common: $common, official: $official)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameModelImpl &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.official, official) ||
                other.official == official));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, common, official);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameModelImplCopyWith<_$NameModelImpl> get copyWith =>
      __$$NameModelImplCopyWithImpl<_$NameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameModelImplToJson(
      this,
    );
  }
}

abstract class _NameModel implements NameModel {
  const factory _NameModel({final String? common, final String? official}) =
      _$NameModelImpl;

  factory _NameModel.fromJson(Map<String, dynamic> json) =
      _$NameModelImpl.fromJson;

  @override
  String? get common;
  @override
  String? get official;
  @override
  @JsonKey(ignore: true)
  _$$NameModelImplCopyWith<_$NameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
