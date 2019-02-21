import 'dart:async';
import 'package:yuque/core/app_application.dart';
import 'package:yuque/pojo/book.dart';
import 'package:yuque/core/log.dart';
import 'package:rxdart/rxdart.dart';

class SearchBloc {
  final AppApplication _application;
  final _searchText = BehaviorSubject<String>();
  final _searchList = BehaviorSubject<List<Book>>();
  final _isShowLoading = BehaviorSubject<bool>();

  CompositeSubscription _compositeSubscription = CompositeSubscription();
  Stream<bool> get isShowLoading => _isShowLoading.stream;
  Stream<String> get searchText => _searchText.stream;
  Stream<List<Book>> get searchList => _searchList.stream;

  SearchBloc(this._application) {
    _searchText.debounce(const Duration(milliseconds: 500))
      .listen((String searchText) {
        _searchIt(searchText);
      });
  }

  void dispose() {
    _compositeSubscription.clear();
    _searchText.close();
    _searchList.close();
    _isShowLoading.close();
  }

  void changeSearchText(String searchText) {
    _searchText.add(searchText);
  }

  void _searchIt(String searchText) {
    _isShowLoading.add(true);
    StreamSubscription subscription = _application.apiRepository.getSearchBooks(searchText)
      .listen((List<Book> books) {
        _searchList.add(books);
      }, onError: (err, res) {
        Log.info(err);
      });

    _compositeSubscription.add(subscription);
  }
}