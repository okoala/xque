import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/pojo/user.dart';
import 'package:yuque/pojo/book.dart';

part 'doc.g.dart';

@JsonSerializable()
class Doc {
  int id;
  String slug;
  String description;
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'book_id')
  int bookId;
  String format;
  int public;
  int status;
  @JsonKey(name: 'likes_count')
  int likesCount;
  @JsonKey(name: 'comments_count')
  int commentsCount;
  @JsonKey(name: 'followers_count')
  int followersCount;
  @JsonKey(name: 'following_count')
  int followingCount;
  @JsonKey(name: 'content_updated_at')
  String contentUpdatedAt;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'published_at')
  String publishedAt;
  @JsonKey(name: 'first_published_at')
  String firstPublishedAt;
  @JsonKey(name: 'draft_version')
  int draftVersion;
  @JsonKey(name: 'last_editor_id')
  int lastEditorId;
  @JsonKey(name: 'word_count')
  int wordCount;
  String cover;
  @JsonKey(name: 'custom_description')
  String customDescription;
  @JsonKey(name: 'last_editor')
  User lastEditor;
  Book book;

  Doc(this.id, this.slug, this.description, this.userId, this.bookId, this.format, this.public, this.status, this.likesCount, this.commentsCount, this.followersCount, this.followingCount, this.contentUpdatedAt, this.createdAt, this.updatedAt, this.publishedAt, this.firstPublishedAt, this.draftVersion, this.lastEditorId, this.wordCount, this.cover, this.customDescription, this.lastEditor, this.book);

  factory Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);

  Map<String, dynamic> toJson() => _$DocToJson(this);
}