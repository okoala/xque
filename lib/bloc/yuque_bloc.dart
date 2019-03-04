import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'package:yuque/core/app_application.dart';
import 'package:yuque/core/api_repository.dart';
import 'package:yuque/core/log.dart';
import 'package:yuque/pojo/group.dart';

class YuqueBloc {
  final AppApplication _application;
  final _groupList = BehaviorSubject<List<Group>>();
  final _isShowLoading = BehaviorSubject<bool>();

  CompositeSubscription _compositeSubscription = CompositeSubscription();
  Stream<bool> get isShowLoading => _isShowLoading.stream;
  Stream<List<Group>> get groupList => _groupList.stream;

  YuqueBloc(this._application) {}

  void dispose() {
    _compositeSubscription.clear();
    _groupList.close();
    _isShowLoading.close();
  }

  void loadGroupList() {
    _isShowLoading.add(true);

    APIRepository apiRepository =_application.apiRepository;

    StreamSubscription subscription = apiRepository.getLoginUserGroupList()
    .listen((List<Group> list) {
      _groupList.add(list);
    }, onError: (err) {
      Log.info(err);
    });

    _compositeSubscription.add(subscription);
  }
}