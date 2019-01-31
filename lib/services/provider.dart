import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Provider {
  static Database db;

  // 获取数据中所有的表
  Future<List> getTables() async {
    if (db == null) {
      return Future.value([]);
    }

    List tables = await db.rawQuery('SELECT name FROM sqlite_master WHERE type = "table"');
    List<String> ret = [];

    tables.forEach((table) {
      ret.add(table['name']);
    });

    return ret;
  }

  Future init() async {
    String dbRoot = await getDatabasesPath();
    String dbPath = join(dbRoot, 'yuque.db');

    try {
      db = await openDatabase(
        dbPath,
        version: 1,
        onCreate: (Database db, int version) async {
          print('db created version is $version');
        },
        onOpen: (Database db) async {
          print('new db opened');
        }
      );
    } catch (err) {
      print("Error $err");
    }
  }
}