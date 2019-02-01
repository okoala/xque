import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
            )
          ],
        )
      )
    );
  }
}