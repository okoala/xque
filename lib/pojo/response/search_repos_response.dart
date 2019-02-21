import 'package:json_annotation/json_annotation.dart';
import 'package:yuque/pojo/book.dart';

part 'search_repos_response.g.dart';

@JsonSerializable()
class SearchReposResponse {
  List<Book> data;

  SearchReposResponse(this.data);

  factory SearchReposResponse.fromJson(Map<String, dynamic> json) =>
    _$SearchReposResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchReposResponseToJson(this);
}