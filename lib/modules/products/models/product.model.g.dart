// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: json['quantity'] as int,
      barcode: json['barcode'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'quantity': instance.quantity,
      'barcode': instance.barcode,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
