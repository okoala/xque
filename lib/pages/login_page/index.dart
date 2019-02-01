import 'package:flutter/material.dart';
import 'package:yuque/config/theme.dart';

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

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 200, bottom: 10),
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