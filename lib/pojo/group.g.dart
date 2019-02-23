// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) {
  return Group(
      json['id'] as int,
      json['login'] as String,
      json['name'] as String,
      json['avatar_url'] as String,
      json['large_avatar_url'] as String,
      json['medium_avatar_url'] as String,
      json['small_avatar_url'] as String,
      json['books_count'] as int,
      json['public_books_count'] as int,
      json['topics_count'] as int,
      json['public_topics_count'] as int,
      json['members_count'] as int,
      json['public'] as int,
      json['description'] as String,
      json['created_at'] as String,
      json['updated_at'] as String);
}

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
      'large_avatar_url': instance.largeAvatarUrl,
      'medium_avatar_url': instance.mediumAvatarUrl,
      'small_avatar_url': instance.smallAvatarUrl,
      'books_count': instance.booksCount,
      'public_books_count': instance.publicBooksCount,
      'topics_count': instance.topicsCount,
      'public_topics_count': instance.publicTopicsCount,
      'members_count': instance.membersCount,
      'public': instance.public,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt
    };
