// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Doc _$DocFromJson(Map<String, dynamic> json) {
  return Doc(
      json['id'] as int,
      json['slug'] as String,
      json['description'] as String,
      json['userId'] as int,
      json['bookId'] as int,
      json['format'] as String,
      json['public'] as int,
      json['status'] as int,
      json['likesCount'] as int,
      json['commentsCount'] as int,
      json['followersCount'] as int,
      json['followingCount'] as int,
      json['contentUpdatedAt'] as String,
      json['createdAt'] as String,
      json['updatedAt'] as String,
      json['publishedAt'] as String,
      json['firstPublishedAt'] as String,
      json['draftVersion'] as int,
      json['lastEditorId'] as int,
      json['wordCount'] as int,
      json['cover'] as String,
      json['customDescription'] as String,
      json['lastEditor'] == null
          ? null
          : User.fromJson(json['lastEditor'] as Map<String, dynamic>),
      json['book'] == null
          ? null
          : Book.fromJson(json['book'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DocToJson(Doc instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'description': instance.description,
      'userId': instance.userId,
      'bookId': instance.bookId,
      'format': instance.format,
      'public': instance.public,
      'status': instance.status,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'followersCount': instance.followersCount,
      'followingCount': instance.followingCount,
      'contentUpdatedAt': instance.contentUpdatedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
      'firstPublishedAt': instance.firstPublishedAt,
      'draftVersion': instance.draftVersion,
      'lastEditorId': instance.lastEditorId,
      'wordCount': instance.wordCount,
      'cover': instance.cover,
      'customDescription': instance.customDescription,
      'lastEditor': instance.lastEditor,
      'book': instance.book
    };
