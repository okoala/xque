import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:yuque/config/theme.dart';
import 'package:yuque/components/app_scaffold.dart';
import 'package:yuque/components/search_input.dart';
import 'package:yuque/pages/yuque_page/group_cell.dart';

class SearchResultPage extends StatefulWidget {
  final String title;

  SearchResultPage({Key key, this.title}) : super(key: key);

  @override
  SearchResultPageState createState() => SearchResultPageState();
}

class SearchResultPageState extends State<SearchResultPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Container(
        child: ListView(
          children: [
            SearchInput(),
          ]
        )
      ),
    );
  }
}
