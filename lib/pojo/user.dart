import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int id;
  String type;
  int spaceId;
  int accountId;
  String login;
  String name;
  String avatarUrl;
  String largeAvatarUrl;
  String mediumAvatarUrl;
  String smallAvatarUrl;
  int booksCount;
  int publicBooksCount;
  int followersCount;
  int followingCount;
  String description;
  String createdAt;
  String updatedAt;

  User(this.id, this.type, this.spaceId, this.accountId, this.login, this.name, this.avatarUrl, this.largeAvatarUrl, this.mediumAvatarUrl, this.smallAvatarUrl, this.booksCount, this.publicBooksCount, this.followersCount, this.followingCount, this.description, this.createdAt, this.updatedAt);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}