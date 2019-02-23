import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/pojo/user.dart';

part 'book.g.dart';

@JsonSerializable()
class Book {
  int id;
  String type;
  String slug;
  String name;
  @JsonKey(name: 'user_id')
  int userId;
  String description;
  int public;
  @JsonKey(name: 'content_updated_at')
  String contentUpdatedAt;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  String namespace;
  User user;

  Book();

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);
}