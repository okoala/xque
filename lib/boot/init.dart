
import 'package:flutter/cupertino.dart';
import 'package:flutter_stetho/flutter_stetho.dart';

import 'package:yuque/config/config.dart';
import 'package:yuque/core/app_application.dart';
import 'package:yuque/core/app_component.dart';
import 'package:yuque/pojo/user.dart';
import 'package:yuque/services/token.dart';

Future<void> init(Config config) async {
  if (config.env == EnvType.LOCAL || config.env == EnvType.TEST) {
    Stetho.initialize();
  }

  String initRoute = "/";
  String token = await Token.getToken();

  var application = AppApplication();
  await application.onCreate(token);

  if (token == null || token.isEmpty) {
    initRoute = "/login";
  } else {
    final User user = (await application.apiProvider.getLoginUser()).data;

    application.setUser(user);
  }
  runApp(AppComponent(application, initRoute));
}
