import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yuque/config/theme.dart';
import 'package:yuque/config/config.dart';
import 'package:yuque/core/app_provider.dart';
import 'package:yuque/core/dialog.dart';
import 'package:yuque/pojo/response/hello_response.dart';
import 'package:yuque/services/token.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String token;

  void submit() {
    print(this.token);
    if (this.token == '' || this.token == null) {
      showTokenErrorDialog(context);
    } else {
      AppProvider.getApplication(context).apiRepository.ping(token).listen((HelloModel helloModel) {
        if (helloModel.message.isNotEmpty) {
          Token.setToken(this.token).then((res) {
            AppProvider.getRouter(context).navigateTo(context, '/yuque');
          });
        } else {
          showTokenErrorDialog(context);
        }
      });
    }
  }

  void openSettingPage() {
    final String url = Config.yuque["tokenUrl"];

    launch(url, forceWebView: true);
  }

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;

    return DefaultTextStyle(
      style: CupertinoTheme.of(context).textTheme.textStyle,
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 100, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Image.asset('assets/images/yuque-logo.png', width: 60, height: 60, fit: BoxFit.cover,)
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('欢迎回来', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: YQColor.grey1),)
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.all(40.0),
                  child: Form(
                    key: this._formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 34,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 0.5, color: YQColor.grey5)
                            )
                          ),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 40.0),
                                child: Text('TOKEN', style: TextStyle(
                                  color: YQColor.grey1,
                                  fontSize: 18
                                ),)
                              ),
                              Expanded(
                                child: CupertinoTextField(
                                  placeholder: '请输入 Token',
                                  padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
                                  style: TextStyle(fontWeight: FontWeight.w700, color: YQColor.grey1, fontSize: 18),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.1,
                                      color: YQColor.grey7
                                    ),
                                  ),
                                  onChanged: (String value) {
                                    this.token = value;
                                  }
                                )
                              )
                            ],
                          )
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            child: Text(
                              '点击通过页面快速获取 Token',
                              style: TextStyle(fontSize: 15, color: YQColor.blue1)
                            ),
                            onPressed: this.openSettingPage,
                          ),
                        ),
                        Container(
                          width: 325,
                          height: 50,
                          margin: EdgeInsets.only(top: 30.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0)
                          ),
                          child: CupertinoButton(
                            color: YQColor.primary1,
                            pressedOpacity: 0.5,
                            child: Text('登录'),
                            onPressed: this.submit,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          )
        )
      )
    );
  }
}