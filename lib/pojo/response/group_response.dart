import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/pojo/group.dart';

part 'group_response.g.dart';

@JsonSerializable()
class GroupResponse {
  List<Group> data;

  GroupResponse(this.data);

  factory GroupResponse.fromJson(Map<String, dynamic> json) =>
    _$GroupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GroupResponseToJson(this);
}