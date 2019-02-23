import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int id;
  String type;
  @JsonKey(name: 'space_id')
  int spaceId;
  @JsonKey(name: 'account_id')
  int accountId;
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
  @JsonKey(name: 'followers_count')
  int followersCount;
  @JsonKey(name: 'following_count')
  int followingCount;
  String description;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  User(this.id, this.type, this.spaceId, this.accountId, this.login, this.name, this.avatarUrl, this.largeAvatarUrl, this.mediumAvatarUrl, this.smallAvatarUrl, this.booksCount, this.publicBooksCount, this.followersCount, this.followingCount, this.description, this.createdAt, this.updatedAt);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}