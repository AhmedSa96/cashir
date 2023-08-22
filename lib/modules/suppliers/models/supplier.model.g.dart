// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupplierModel _$$_SupplierModelFromJson(Map<String, dynamic> json) =>
    _$_SupplierModel(
      id: json['id'] as int,
      name: json['name'] as String,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_SupplierModelToJson(_$_SupplierModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
