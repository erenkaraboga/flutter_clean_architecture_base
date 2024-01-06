// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      flags: json['flags'] == null
          ? null
          : FlagsModel.fromJson(json['flags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flags': instance.flags,
    };
