import 'package:json_annotation/json_annotation.dart';

part 'hello_response.g.dart';

@JsonSerializable()
class HelloResponse {
  HelloModel data;

  HelloResponse(this.data);

  factory HelloResponse.fromJson(Map<String, dynamic> json) =>
    _$HelloResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HelloResponseToJson(this);
}

@JsonSerializable()
class HelloModel {
  String message;

  HelloModel(this.message);

  factory HelloModel.fromJson(Map<String, dynamic> json) =>
    _$HelloModelFromJson(json);

  Map<String, dynamic> toJson() => _$HelloModelToJson(this);
}