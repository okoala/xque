import 'package:rxdart/rxdart.dart';

import 'package:yuque/core/app_application.dart';
import 'package:yuque/core/api_provider.dart';
import 'package:yuque/core/db_repository.dart';
import 'package:yuque/pojo/response/hello_response.dart';
import 'package:yuque/pojo/response/search_repos_response.dart';
import 'package:yuque/pojo/response/group_response.dart';
import 'package:yuque/pojo/book.dart';
import 'package:yuque/pojo/group.dart';

class APIRepository {
  AppApplication _application;
  APIProvider _apiProvider;
  DBRepository _dbRepository;

  APIRepository(this._application, this._apiProvider, this._dbRepository);

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

  Observable<List<Group>> getLoginUserGroupList() {
    return Observable.fromFuture(_apiProvider.getUserGroups(_application.user.id))
    .flatMap((GroupResponse response) {
      return Observable.just(response.data);
    });
  }

  // Future<List<Group>> _loadAndSaveLoginUserGroupList(List<Group> list, int userId) async {
  //   for(var i = 0; i < list.length ; i++){
  //     Group group = list[i];
  //     await _dbRepository.saveOrUpdateGroup(group);
  //   }
  //   List<Group> groupList = await _dbRepository.loadGroups(userId);
  //   return groupList;
  // }
}