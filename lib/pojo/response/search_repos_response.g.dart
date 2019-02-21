// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchReposResponse _$SearchReposResponseFromJson(Map<String, dynamic> json) {
  return SearchReposResponse((json['data'] as List)
      ?.map((e) => e == null ? null : Book.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$SearchReposResponseToJson(
        SearchReposResponse instance) =>
    <String, dynamic>{'data': instance.data};
