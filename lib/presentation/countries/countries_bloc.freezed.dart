// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountriesState {
  StateType get stateType => throw _privateConstructorUsedError;
  List<CountryModel> get countryList => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountriesStateCopyWith<CountriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesStateCopyWith<$Res> {
  factory $CountriesStateCopyWith(
          CountriesState value, $Res Function(CountriesState) then) =
      _$CountriesStateCopyWithImpl<$Res, CountriesState>;
  @useResult
  $Res call(
      {StateType stateType, List<CountryModel> countryList, String error});
}

/// @nodoc
class _$CountriesStateCopyWithImpl<$Res, $Val extends CountriesState>
    implements $CountriesStateCopyWith<$Res> {
  _$CountriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateType = null,
    Object? countryList = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      stateType: null == stateType
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
      countryList: null == countryList
          ? _value.countryList
          : countryList // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountriesStateImplCopyWith<$Res>
    implements $CountriesStateCopyWith<$Res> {
  factory _$$CountriesStateImplCopyWith(_$CountriesStateImpl value,
          $Res Function(_$CountriesStateImpl) then) =
      __$$CountriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateType stateType, List<CountryModel> countryList, String error});
}

/// @nodoc
class __$$CountriesStateImplCopyWithImpl<$Res>
    extends _$CountriesStateCopyWithImpl<$Res, _$CountriesStateImpl>
    implements _$$CountriesStateImplCopyWith<$Res> {
  __$$CountriesStateImplCopyWithImpl(
      _$CountriesStateImpl _value, $Res Function(_$CountriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateType = null,
    Object? countryList = null,
    Object? error = null,
  }) {
    return _then(_$CountriesStateImpl(
      stateType: null == stateType
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
      countryList: null == countryList
          ? _value._countryList
          : countryList // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CountriesStateImpl implements _CountriesState {
  const _$CountriesStateImpl(
      {this.stateType = StateType.initial,
      final List<CountryModel> countryList = const [],
      this.error = ""})
      : _countryList = countryList;

  @override
  @JsonKey()
  final StateType stateType;
  final List<CountryModel> _countryList;
  @override
  @JsonKey()
  List<CountryModel> get countryList {
    if (_countryList is EqualUnmodifiableListView) return _countryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countryList);
  }

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'CountriesState(stateType: $stateType, countryList: $countryList, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesStateImpl &&
            (identical(other.stateType, stateType) ||
                other.stateType == stateType) &&
            const DeepCollectionEquality()
                .equals(other._countryList, _countryList) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateType,
      const DeepCollectionEquality().hash(_countryList), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesStateImplCopyWith<_$CountriesStateImpl> get copyWith =>
      __$$CountriesStateImplCopyWithImpl<_$CountriesStateImpl>(
          this, _$identity);
}

abstract class _CountriesState implements CountriesState {
  const factory _CountriesState(
      {final StateType stateType,
      final List<CountryModel> countryList,
      final String error}) = _$CountriesStateImpl;

  @override
  StateType get stateType;
  @override
  List<CountryModel> get countryList;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$CountriesStateImplCopyWith<_$CountriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
