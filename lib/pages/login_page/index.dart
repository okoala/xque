import 'package:flutter/material.dart';
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

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: YQColor.grey7,
          brightness: Brightness.light,
          textTheme: TextTheme(title: TextStyle(color: YQColor.grey1, fontSize: 18, fontWeight: FontWeight.w500)),
          elevation: 0.0,
          title: Text('语雀'),
        )
      ),
      backgroundColor: YQColor.grey7,
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 180, bottom: 10),
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset('assets/images/yuque-logo.png', width: 80, height: 80, fit: BoxFit.cover,)
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text('欢迎回来', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(40.0),
              child: Form(
                key: this._formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 0.5, color: YQColor.grey5)
                        )
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '请输入 Token',
                          border: InputBorder.none,
                        ),
                        onSaved: (String value) {
                          this.token = value;
                        }
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        child: new Text('点击通过页面快速获取 Token', style: TextStyle(color: YQColor.blue1),),
                        onTap: this.openSettingPage
                      ),
                    ),
                    Container(
                      width: 325,
                      height: 58,
                      margin: EdgeInsets.only(top: 30.0),
                      child: GestureDetector(
                        onTapUp: this.submit,
                        child: ConstrainedBox(
                          constraints: BoxConstraints.expand(),
                          child: Image.asset(
                            'assets/images/login-enable.png',
                            fit: BoxFit.fill,
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
    );
  }
}