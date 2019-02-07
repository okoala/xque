// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HelloResponse _$HelloResponseFromJson(Map<String, dynamic> json) {
  return HelloResponse(json['data'] == null
      ? null
      : HelloModel.fromJson(json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$HelloResponseToJson(HelloResponse instance) =>
    <String, dynamic>{'data': instance.data};

HelloModel _$HelloModelFromJson(Map<String, dynamic> json) {
  return HelloModel(json['message'] as String);
}

Map<String, dynamic> _$HelloModelToJson(HelloModel instance) =>
    <String, dynamic>{'message': instance.message};
