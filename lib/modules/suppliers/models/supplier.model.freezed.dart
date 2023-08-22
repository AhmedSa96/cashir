// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupplierModel _$SupplierModelFromJson(Map<String, dynamic> json) {
  return _SupplierModel.fromJson(json);
}

/// @nodoc
mixin _$SupplierModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierModelCopyWith<SupplierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierModelCopyWith<$Res> {
  factory $SupplierModelCopyWith(
          SupplierModel value, $Res Function(SupplierModel) then) =
      _$SupplierModelCopyWithImpl<$Res, SupplierModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? phone,
      String? address,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$SupplierModelCopyWithImpl<$Res, $Val extends SupplierModel>
    implements $SupplierModelCopyWith<$Res> {
  _$SupplierModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = freezed,
    Object? address = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_SupplierModelCopyWith<$Res>
    implements $SupplierModelCopyWith<$Res> {
  factory _$$_SupplierModelCopyWith(
          _$_SupplierModel value, $Res Function(_$_SupplierModel) then) =
      __$$_SupplierModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? phone,
      String? address,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$_SupplierModelCopyWithImpl<$Res>
    extends _$SupplierModelCopyWithImpl<$Res, _$_SupplierModel>
    implements _$$_SupplierModelCopyWith<$Res> {
  __$$_SupplierModelCopyWithImpl(
      _$_SupplierModel _value, $Res Function(_$_SupplierModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = freezed,
    Object? address = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_SupplierModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_SupplierModel implements _SupplierModel {
  const _$_SupplierModel(
      {required this.id,
      required this.name,
      required this.phone,
      required this.address,
      required this.createdAt,
      required this.updatedAt});

  factory _$_SupplierModel.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'SupplierModel(id: $id, name: $name, phone: $phone, address: $address, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupplierModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, phone, address, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupplierModelCopyWith<_$_SupplierModel> get copyWith =>
      __$$_SupplierModelCopyWithImpl<_$_SupplierModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierModelToJson(
      this,
    );
  }
}

abstract class _SupplierModel implements SupplierModel {
  const factory _SupplierModel(
      {required final int id,
      required final String name,
      required final String? phone,
      required final String? address,
      required final String createdAt,
      required final String updatedAt}) = _$_SupplierModel;

  factory _SupplierModel.fromJson(Map<String, dynamic> json) =
      _$_SupplierModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SupplierModelCopyWith<_$_SupplierModel> get copyWith =>
      throw _privateConstructorUsedError;
}
