// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
    };
