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
    await db.execute('CREATE TABLE YuqueHome (id INTEGER PRIMARY KEY, order INTEGER, title: TEXT, subtitle: TEXT, icon: TEXT, isFiexed INTEGER, isUnread: INTEGER)');
  }
}