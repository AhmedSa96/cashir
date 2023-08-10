// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_status.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthStatus _$$_AuthStatusFromJson(Map<String, dynamic> json) =>
    _$_AuthStatus(
      isLoggedIn: json['isLoggedIn'] as bool,
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthStatusToJson(_$_AuthStatus instance) =>
    <String, dynamic>{
      'isLoggedIn': instance.isLoggedIn,
      'token': instance.token,
      'user': instance.user,
    };
