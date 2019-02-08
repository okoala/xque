// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      json['id'] as int,
      json['type'] as String,
      json['spaceId'] as int,
      json['accountId'] as int,
      json['login'] as String,
      json['name'] as String,
      json['avatarUrl'] as String,
      json['largeAvatarUrl'] as String,
      json['mediumAvatarUrl'] as String,
      json['smallAvatarUrl'] as String,
      json['booksCount'] as int,
      json['publicBooksCount'] as int,
      json['followersCount'] as int,
      json['followingCount'] as int,
      json['description'] as String,
      json['createdAt'] as String,
      json['updatedAt'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'spaceId': instance.spaceId,
      'accountId': instance.accountId,
      'login': instance.login,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'largeAvatarUrl': instance.largeAvatarUrl,
      'mediumAvatarUrl': instance.mediumAvatarUrl,
      'smallAvatarUrl': instance.smallAvatarUrl,
      'booksCount': instance.booksCount,
      'publicBooksCount': instance.publicBooksCount,
      'followersCount': instance.followersCount,
      'followingCount': instance.followingCount,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt
    };
