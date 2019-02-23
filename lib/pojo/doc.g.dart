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
      json['user_id'] as int,
      json['book_id'] as int,
      json['format'] as String,
      json['public'] as int,
      json['status'] as int,
      json['likes_count'] as int,
      json['comments_count'] as int,
      json['followers_count'] as int,
      json['following_count'] as int,
      json['content_updated_at'] as String,
      json['created_at'] as String,
      json['updated_at'] as String,
      json['published_at'] as String,
      json['first_published_at'] as String,
      json['draft_version'] as int,
      json['last_editor_id'] as int,
      json['word_count'] as int,
      json['cover'] as String,
      json['custom_description'] as String,
      json['last_editor'] == null
          ? null
          : User.fromJson(json['last_editor'] as Map<String, dynamic>),
      json['book'] == null
          ? null
          : Book.fromJson(json['book'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DocToJson(Doc instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'description': instance.description,
      'user_id': instance.userId,
      'book_id': instance.bookId,
      'format': instance.format,
      'public': instance.public,
      'status': instance.status,
      'likes_count': instance.likesCount,
      'comments_count': instance.commentsCount,
      'followers_count': instance.followersCount,
      'following_count': instance.followingCount,
      'content_updated_at': instance.contentUpdatedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'published_at': instance.publishedAt,
      'first_published_at': instance.firstPublishedAt,
      'draft_version': instance.draftVersion,
      'last_editor_id': instance.lastEditorId,
      'word_count': instance.wordCount,
      'cover': instance.cover,
      'custom_description': instance.customDescription,
      'last_editor': instance.lastEditor,
      'book': instance.book
    };
