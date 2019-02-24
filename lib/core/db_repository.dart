import 'dart:convert';
import 'package:sqflite/sqflite.dart';

import 'package:yuque/pojo/group.dart';

class DBRepository {
  Database _database;
  DBRepository(this._database);

  Future<void> saveOrUpdateGroup(Group group) async {
    String meta = jsonEncode(group.toJson());

    int count = await _database.rawUpdate('UPDATE Group SET login = ?, name = ?, avatarUrl = ?, largeAvatarUrl = ?, mediumAvatarUrl = ?, smallAvatarUrl = ?, booksCount = ?, publicBooksCount = ?, topicsCount = ?, publicTopicsCount = ?, membersCount = ?, public = ?, description = ? WHERE id = ?', [group.login, group.name, group.avatarUrl, group.largeAvatarUrl, group.mediumAvatarUrl, group.smallAvatarUrl, group.booksCount, group.publicBooksCount, group.topicsCount, group.publicBooksCount, group.membersCount, group.public, group.description]);

    if (0 == count) {
      // await _database.rawInsert(sql)
    }
  }

  Future<List<Group>> loadGroups(String search) async {

  }
}