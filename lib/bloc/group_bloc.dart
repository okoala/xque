import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'package:yuque/core/app_application.dart';
import 'package:yuque/core/db_repository.dart';
import 'package:yuque/core/log.dart';
import 'package:yuque/pojo/group.dart';

class GroupBloc {
  final _group =BehaviorSubject<Group>();

  Stream<Group> get group => _group.stream;

  void dispose() {
    _group.close();
  }

  //
  void loadGroup() {

  }
}