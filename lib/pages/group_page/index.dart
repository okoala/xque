import 'package:flutter/cupertino.dart';

import 'package:yuque/components/app_scaffold.dart';
import 'package:yuque/core/app_provider.dart';
import 'package:yuque/bloc/search_bloc.dart';
import 'package:yuque/config/theme.dart';

class GroupPage extends StatefulWidget {
  final String title;

  GroupPage({Key key, this.title}) : super(key: key);

  @override
  GroupPageState createState() => GroupPageState();
}

class GroupPageState extends State<GroupPage> {
  SearchBloc searchBloc;

  @override
  void dispose() {
    super.dispose();
    searchBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _init(context);

    return AppScaffold(
      showNavigationBar: false,
      body: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Row(
          children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                    color: YQColor.grey7,
                    borderRadius: BorderRadius.circular(4.0)),
              child: Container(
                height: 35.0,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.only(right: 5.0, left: 5.0),
                decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.circular(4.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Icon(CupertinoIcons.search, size: 20.0, color: YQColor.grey3)
                    ),
                    Expanded(
                      child: CupertinoTextField(
                        autofocus: true,
                        placeholder: '搜索',
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0,
                            color: CupertinoColors.white,
                          ),
                        ),
                        onSubmitted: (value) {
                          searchBloc.changeSearchText(value);
                        },
                      )
                    )
                  ],
                ),
              )
            )
          ),
          Container(
            child: CupertinoButton(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                '取消',
                style: TextStyle(fontSize: 18, color: YQColor.blue1)
              ),
              onPressed: (){
                AppProvider.getRouter(context).pop(context);
              },
            ),
          ),
        ],
      ),
      ),
    );
  }

  void _init(BuildContext context){
    if(null == searchBloc){
      searchBloc = SearchBloc(AppProvider.getApplication(context));
    }
  }
}
