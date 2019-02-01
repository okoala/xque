import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:yuque/config/theme.dart';
import 'package:yuque/config/application.dart';
import 'package:yuque/config/routes.dart';


class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String token;

  void submit(TapUpDetails details) {
    if (this._formKey.currentState.validate()) {

    }
  }

  void openSettingPage() {
    final String title = "语雀 Token 页面";
    final String url = Application.yuque["settingTokenUrl"];

    Application.router.navigateTo(context, "${Routes.webview}?title=${Uri.encodeComponent(title)}&url=${Uri.encodeComponent(url)}");
  }

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;

    return DefaultTextStyle(
      style: CupertinoTheme.of(context).textTheme.textStyle,
      child: CupertinoPageScaffold(
        backgroundColor: YQColor.grey7,
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 100, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Image.asset('assets/images/yuque-logo.png', width: 50, height: 50, fit: BoxFit.cover,)
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
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 0.5, color: YQColor.grey5)
                            )
                          ),
                          child: CupertinoTextField(
                            placeholder: '请输入 Token',
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.1,
                                color: YQColor.grey7
                              ),
                            ),
                            onSubmitted: (String value) {
                              this.token = value;
                            }
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          alignment: Alignment.centerLeft,
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            child: Text(
                              '点击通过页面快速获取 Token',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: YQColor.blue1)
                            ),
                            onPressed: this.openSettingPage,
                          ),
                        ),
                        Container(
                          width: 325,
                          height: 58,
                          margin: EdgeInsets.only(top: 30.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0)
                          ),
                          child: GestureDetector(
                            onTapUp: this.submit,
                            child: ConstrainedBox(
                              constraints: BoxConstraints.expand(),
                              child: Image.asset(
                                'assets/images/login-enable.png',
                                fit: BoxFit.cover,
                                gaplessPlayback: true
                              )
                            )
                          )
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