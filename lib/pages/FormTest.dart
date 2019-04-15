import 'package:flutter/material.dart';

class FormTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormTestState();
  }
}

class FormTestState extends State<FormTest> {
  //监听输入事件
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();

  GlobalKey _formKey = GlobalKey<FormState>();

  void _check() {
    if ((_formKey.currentState as FormState).validate()) {
      Navigator.of(context).pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("验证表单"),
        ),
        body: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            child: Form(
                key: _formKey,
                autovalidate: true,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      autofocus: true,
                      controller: _emailController,
                      decoration: InputDecoration(
                          labelText: "User Name",
                          hintText: "pls input your name",
                          icon: Icon(Icons.person)),
                      validator: (name) {
                        return name.trim().length > 0 ? null : "用户名不能为空";
                      },
                    ),
                    TextFormField(
                      controller: _pwdController,
                      decoration: InputDecoration(
                          labelText: "Pass word",
                          hintText: "pls input your password",
                          icon: Icon(Icons.lock)),
                      obscureText: true,
                      validator: (pwd) {
                        return pwd.trim().length > 5 ? null : "密码少于6位";
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              padding: EdgeInsets.all(15.0),
                              child: Text("登录"),
                              color: Theme.of(context).primaryColor,
                              textColor: Colors.white,
                              onPressed: _check,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
