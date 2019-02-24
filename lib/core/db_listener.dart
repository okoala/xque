import 'package:sqflite/sqflite.dart';
import 'package:yuque/core/log.dart';

class DBListener {
  void onCreate(Database db, int version) async {
    Log.info('onCreate version: $version');
    await _createDatabase(db, version);
  }

  void onUpgrade(Database db, int oldVersion, int newVersion) async {
    Log.info('oldVersion: $oldVersion');
    Log.info('newVersion: $newVersion');
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('CREATE TABLE Group (id INTEGER PRIMARY KEY, login TEXT, name TEXT, avatarUrl TEXT, largeAvatarUrl TEXT, mediumAvatarUrl TEXT, smallAvatarUrl TEXT, booksCount INTEGER, publicBooksCount INTEGER, topicsCount INTEGER, publicTopicsCount INTEGER, membersCount INTEGER, public INTEGER, description TEXT, createdAt TEXT, updatedAt TEXT)');
  }
}