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
    ..userId = json['userId'] as int
    ..description = json['description'] as String
    ..public = json['public'] as int
    ..contentUpdatedAt = json['contentUpdatedAt'] as String
    ..createdAt = json['createdAt'] as String
    ..updatedAt = json['updatedAt'] as String
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
      'userId': instance.userId,
      'description': instance.description,
      'public': instance.public,
      'contentUpdatedAt': instance.contentUpdatedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'namespace': instance.namespace,
      'user': instance.user
    };
