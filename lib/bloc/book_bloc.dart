import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'package:yuque/core/app_application.dart';
import 'package:yuque/core/db_repository.dart';
import 'package:yuque/core/log.dart';
import 'package:yuque/pojo/book.dart';

class BookBloc {
  final _bookList =BehaviorSubject<List<Book>>();
  final _book =BehaviorSubject<Book>();

  Stream<Book> get book => _book.stream;
  Stream<List<Book>> get bookList => _bookList.stream;

  void dispose() {
    _book.close();
    _bookList.close();
  }

  void loadBook() {

  }

  // 加载 books
  void loadBookList() {

  }
}