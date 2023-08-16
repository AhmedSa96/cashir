// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constant_parent.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConstantParentState _$$_ConstantParentStateFromJson(
        Map<String, dynamic> json) =>
    _$_ConstantParentState(
      isLoading: json['isLoading'] as bool,
      parents: (json['parents'] as List<dynamic>)
          .map((e) => ConstantParentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ConstantParentStateToJson(
        _$_ConstantParentState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'parents': instance.parents,
    };
