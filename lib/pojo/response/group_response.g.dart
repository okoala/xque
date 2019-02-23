// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupResponse _$GroupResponseFromJson(Map<String, dynamic> json) {
  return GroupResponse((json['data'] as List)
      ?.map((e) => e == null ? null : Group.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$GroupResponseToJson(GroupResponse instance) =>
    <String, dynamic>{'data': instance.data};
