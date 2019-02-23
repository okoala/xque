// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book()
    ..id = json['id'] as int
    ..type = json['type'] as String
    ..slug = json['slug'] as String
    ..name = json['name'] as String
    ..userId = json['user_id'] as int
    ..description = json['description'] as String
    ..public = json['public'] as int
    ..contentUpdatedAt = json['content_updated_at'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..namespace = json['namespace'] as String
    ..user = json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'slug': instance.slug,
      'name': instance.name,
      'user_id': instance.userId,
      'description': instance.description,
      'public': instance.public,
      'content_updated_at': instance.contentUpdatedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'namespace': instance.namespace,
      'user': instance.user
    };
