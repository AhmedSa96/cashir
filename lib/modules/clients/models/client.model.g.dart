// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientModel _$$_ClientModelFromJson(Map<String, dynamic> json) =>
    _$_ClientModel(
      id: json['id'] as int,
      name: json['name'] as String,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_ClientModelToJson(_$_ClientModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
