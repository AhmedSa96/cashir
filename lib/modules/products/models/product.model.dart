import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.model.freezed.dart';
part 'product.model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required String description,
    required double price,
    // required String image,
    required int quantity,
    // required String category,
    required String barcode,
    required String createdAt,
    required String updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
