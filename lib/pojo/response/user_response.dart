import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/pojo/user.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  User data;

  UserResponse(this.data);

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
    _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}