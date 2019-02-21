import 'package:rxdart/rxdart.dart';

import 'package:yuque/core/api_provider.dart';
import 'package:yuque/core/db_repository.dart';
import 'package:yuque/pojo/response/hello_response.dart';
import 'package:yuque/pojo/response/search_repos_response.dart';
import 'package:yuque/pojo/book.dart';

class APIRepository {
  APIProvider _apiProvider;
  DBRepository _dbRepository;

  APIRepository(this._apiProvider, this._dbRepository);

  Observable<HelloModel> ping(String token) {
    return Observable.fromFuture(_apiProvider.getHello(token))
    .flatMap((HelloResponse response) {
      return Observable.just(response.data);
    });
  }

  Observable<List<Book>> getSearchBooks(String searchText) {
    return Observable.fromFuture(_apiProvider.getSearchRepos('Book', searchText))
      .flatMap((SearchReposResponse response) {
        return Observable.just(response.data);
      });
  }
}