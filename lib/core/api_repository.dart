import 'package:yuque/core/api_provider.dart';
import 'package:yuque/core/db_repository.dart';
import 'package:yuque/helpers/urllib_helpers.dart';

class ApiRepository {
  APIProvider _apiProvider;
  DBRepository _dbRepository;

  ApiRepository(this._apiProvider, this._dbRepository);

  Future ping(String token) async {
    var res = await _apiProvider.getHello();
    return res;
  }
}