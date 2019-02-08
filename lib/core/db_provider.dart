import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {

  Database _database;
  DBConfig dbConfig;


  DBProvider(this.dbConfig){
    if(null == dbConfig){
      throw NullThrownError;
    }
  }

  Future<void> open() async {
    var path = await _getDBPath();

    _database = await openDatabase(
      path,
      version: dbConfig.version,
      onCreate: null != dbConfig.onCreate ? dbConfig.onCreate : null,
      onUpgrade: null != dbConfig.onUpgrade ? dbConfig.onUpgrade : null
    );
  }

  Future<void> deleteDB() async{
    var path = await _getDBPath();
    await deleteDatabase(path);
  }

  Future<void> close() async{
    if(null != _database){
      await _database.close();
    }
  }

  Future<String> _getDBPath() async{
    var dbPath = await getDatabasesPath();
    return join(dbPath, dbConfig.dbName);
  }

  Database get database => _database;

}

class DBConfig{
  int version;
  String dbName;
  Function onCreate;
  Function onUpgrade;

  DBConfig(this.version, this.dbName, this.onCreate, this.onUpgrade);
}

abstract class DatabaseMigrationListener{
  void onCreate(Database db, int version);
  void onUpgrade(Database db, int oldVersion, int newVersion);
}