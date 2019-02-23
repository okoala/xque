import 'package:json_annotation/json_annotation.dart';

part 'group.g.dart';

@JsonSerializable()
class Group {
  int id;
  String login;
  String name;
  @JsonKey(name: 'avatar_url')
  String avatarUrl;
  @JsonKey(name: 'large_avatar_url')
  String largeAvatarUrl;
  @JsonKey(name: 'medium_avatar_url')
  String mediumAvatarUrl;
  @JsonKey(name: 'small_avatar_url')
  String smallAvatarUrl;
  @JsonKey(name: 'books_count')
  int booksCount;
  @JsonKey(name: 'public_books_count')
  int publicBooksCount;
  @JsonKey(name: 'topics_count')
  int topicsCount;
  @JsonKey(name: 'public_topics_count')
  int publicTopicsCount;
  @JsonKey(name: 'members_count')
  int membersCount;
  int public;
  String description;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  Group(this.id, this.login, this.name, this.avatarUrl, this.largeAvatarUrl, this.mediumAvatarUrl, this.smallAvatarUrl, this.booksCount, this.publicBooksCount, this.topicsCount, this.publicTopicsCount, this.membersCount, this.public, this.description, this.createdAt, this.updatedAt);

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  Map<String, dynamic> toJson() => _$GroupToJson(this);
}