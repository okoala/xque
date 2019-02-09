import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/pojo/user.dart';
import 'package:yuque/pojo/book.dart';

part 'doc.g.dart';

@JsonSerializable()
class Doc {
  int id;
  String slug;
  String description;
  int userId;
  int bookId;
  String format;
  int public;
  int status;
  int likesCount;
  int commentsCount;
  int followersCount;
  int followingCount;
  String contentUpdatedAt;
  String createdAt;
  String updatedAt;
  String publishedAt;
  String firstPublishedAt;
  int draftVersion;
  int lastEditorId;
  int wordCount;
  String cover;
  String customDescription;
  User lastEditor;
  Book book;

  Doc(this.id, this.slug, this.description, this.userId, this.bookId, this.format, this.public, this.status, this.likesCount, this.commentsCount, this.followersCount, this.followingCount, this.contentUpdatedAt, this.createdAt, this.updatedAt, this.publishedAt, this.firstPublishedAt, this.draftVersion, this.lastEditorId, this.wordCount, this.cover, this.customDescription, this.lastEditor, this.book);

  factory Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);

  Map<String, dynamic> toJson() => _$DocToJson(this);
}