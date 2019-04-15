import 'package:flutter/material.dart';
import 'package:learn/constans/RouteName.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController _textEditingController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(() {
      print("password input value ${_textEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("登录页面"),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "pls input your account",
                  prefixIcon: Icon(Icons.person)),
              onChanged: (str) {
                print("account input value $str");
              },
              textInputAction: TextInputAction.next,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "pls input your password",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
              controller: _textEditingController,
              textInputAction: TextInputAction.done,
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              highlightColor: Colors.blue[700],
              splashColor: Colors.grey,
              colorBrightness: Brightness.dark,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text("登录"),
              onPressed: () => {
                // Navigator.of(context).pushNamed(PAGE_LOGIN_FORM)
                },
            )
          ],
        ));
  }
}
