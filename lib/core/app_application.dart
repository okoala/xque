import 'package:yuque/config/config.dart';
import 'package:yuque/core/router.dart';
import 'package:yuque/core/db_provider.dart';
import 'package:yuque/core/db_repository.dart';
import 'package:yuque/core/db_listener.dart';
import 'package:yuque/core/api_provider.dart';
import 'package:yuque/core/api_repository.dart';
import 'package:yuque/core/log.dart';
import 'package:yuque/pojo/user.dart';
import 'package:yuque/routes.dart';

class AppApplication {
  CupertinoRouter router;
  DBProvider db;
  DBRepository dbRepository;
  APIRepository apiRepository;
  APIProvider apiProvider;
  String token;
  User user;

  Future<void> onCreate(String token) async {
    _initToken(token);
    _initLog();
    _initRouter();
    await _initDB();
    _initDBRepository();
    _initAPIRepository();
  }

  Future<void> onTerminate() async {
    await db.close();
  }

  void _initToken(String _token) {
    token = _token;
  }

  void setUser(User _user) {
    user = _user;
  }

  void _initLog() {
    Log.init();

    switch(Config.value.env) {
      case EnvType.LOCAL:
      case EnvType.TEST: {
        Log.setLevel(Level.ALL);
        break;
      }
      case EnvType.PROD: {
        Log.setLevel(Level.INFO);
      }
    }
  }

  void _initRouter() {
    router = CupertinoRouter();
    Routes.configureRoutes(router);
  }

  Future<void> _initDB() async {
    DBListener dbListener = DBListener();
    DBConfig dbConfig = DBConfig(Config.value.dbVersion, Config.value.dbName, dbListener.onCreate, dbListener.onUpgrade);

    db = DBProvider(dbConfig);
    Log.info('DB name: ' + Config.value.dbName);
    await db.open();
  }

  void _initDBRepository() {
    dbRepository = DBRepository(db.database);
  }

  void _initAPIRepository() {
    apiProvider = APIProvider(token);
    apiRepository = APIRepository(this, apiProvider, dbRepository);
  }
}