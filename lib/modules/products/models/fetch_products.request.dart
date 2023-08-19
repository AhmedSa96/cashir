import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_products.request.freezed.dart';
part 'fetch_products.request.g.dart';

@freezed
class FetchProductsRequest with _$FetchProductsRequest {
  const factory FetchProductsRequest({
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
  }) = _FetchProductsRequest;

  factory FetchProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchProductsRequestFromJson(json);
}
