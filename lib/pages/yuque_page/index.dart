import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:yuque/config/theme.dart';
import 'package:yuque/core/app_application.dart';
import 'package:yuque/core/app_provider.dart';
import 'package:yuque/pojo/group.dart';
import 'package:yuque/components/app_scaffold.dart';
import 'package:yuque/components/search_input.dart';
import 'package:yuque/pages/yuque_page/group_cell.dart';
import 'package:yuque/bloc/yuque_bloc.dart';

class YuquePage extends StatefulWidget {
  final String title;

  YuquePage({Key key, this.title}) : super(key: key);

  @override
  YuquePageState createState() => YuquePageState();
}

class YuquePageState extends State<YuquePage> {
  YuqueBloc yuqueBloc;

  @override
  void dispose() {
    super.dispose();
    yuqueBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _init(context);

    return StreamBuilder(
      stream:yuqueBloc.groupList,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting: {
            return Center(
              child: Text('loading...')
            );
          }
          case ConnectionState.done:
          case ConnectionState.active: {
            List<Group> _groupList = snapshot.data;

            return AppScaffold(
              title: '语雀',
              body: Container(
                child: ListView.builder(
                  itemCount: _groupList.length + 1,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return SearchInput(onTap: () {
                        AppProvider.getRouter(context).navigateTo(context, '/search');
                      });
                    } else {
                      Group group = _groupList[index - 1];
                      return GroupCell(
                        title: group.name,
                        doctitle: group.description,
                        iconUrl: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: group.mediumAvatarUrl,
                            errorWidget: new Icon(Icons.error),
                            fadeOutDuration: new Duration(milliseconds: 300),
                            fadeInDuration: new Duration(milliseconds: 300),
                            fit: BoxFit.cover
                          ),
                        ),
                        onPressed: () {
                          AppProvider.getRouter(context).navigateTo(context, '/group');
                        },
                      );
                    }
                  },
                ),
              ),
            );
          }
        }
      }
    );
  }

  void _init(BuildContext context){
    if(null == yuqueBloc){
      AppApplication _application = AppProvider.getApplication(context);
      yuqueBloc = YuqueBloc(_application);
      yuqueBloc.loadGroupList();
    }
  }
}
