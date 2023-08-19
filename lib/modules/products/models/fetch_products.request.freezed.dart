// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_products.request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchProductsRequest _$FetchProductsRequestFromJson(Map<String, dynamic> json) {
  return _FetchProductsRequest.fromJson(json);
}

/// @nodoc
mixin _$FetchProductsRequest {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price =>
      throw _privateConstructorUsedError; // required String image,
  int get quantity =>
      throw _privateConstructorUsedError; // required String category,
  String get barcode => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchProductsRequestCopyWith<FetchProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchProductsRequestCopyWith<$Res> {
  factory $FetchProductsRequestCopyWith(FetchProductsRequest value,
          $Res Function(FetchProductsRequest) then) =
      _$FetchProductsRequestCopyWithImpl<$Res, FetchProductsRequest>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double price,
      int quantity,
      String barcode,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$FetchProductsRequestCopyWithImpl<$Res,
        $Val extends FetchProductsRequest>
    implements $FetchProductsRequestCopyWith<$Res> {
  _$FetchProductsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? quantity = null,
    Object? barcode = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchProductsRequestCopyWith<$Res>
    implements $FetchProductsRequestCopyWith<$Res> {
  factory _$$_FetchProductsRequestCopyWith(_$_FetchProductsRequest value,
          $Res Function(_$_FetchProductsRequest) then) =
      __$$_FetchProductsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double price,
      int quantity,
      String barcode,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$_FetchProductsRequestCopyWithImpl<$Res>
    extends _$FetchProductsRequestCopyWithImpl<$Res, _$_FetchProductsRequest>
    implements _$$_FetchProductsRequestCopyWith<$Res> {
  __$$_FetchProductsRequestCopyWithImpl(_$_FetchProductsRequest _value,
      $Res Function(_$_FetchProductsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? quantity = null,
    Object? barcode = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_FetchProductsRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchProductsRequest implements _FetchProductsRequest {
  const _$_FetchProductsRequest(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.quantity,
      required this.barcode,
      required this.createdAt,
      required this.updatedAt});

  factory _$_FetchProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_FetchProductsRequestFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
// required String image,
  @override
  final int quantity;
// required String category,
  @override
  final String barcode;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'FetchProductsRequest(id: $id, name: $name, description: $description, price: $price, quantity: $quantity, barcode: $barcode, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchProductsRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, price,
      quantity, barcode, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchProductsRequestCopyWith<_$_FetchProductsRequest> get copyWith =>
      __$$_FetchProductsRequestCopyWithImpl<_$_FetchProductsRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchProductsRequestToJson(
      this,
    );
  }
}

abstract class _FetchProductsRequest implements FetchProductsRequest {
  const factory _FetchProductsRequest(
      {required final int id,
      required final String name,
      required final String description,
      required final double price,
      required final int quantity,
      required final String barcode,
      required final String createdAt,
      required final String updatedAt}) = _$_FetchProductsRequest;

  factory _FetchProductsRequest.fromJson(Map<String, dynamic> json) =
      _$_FetchProductsRequest.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override // required String image,
  int get quantity;
  @override // required String category,
  String get barcode;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FetchProductsRequestCopyWith<_$_FetchProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
