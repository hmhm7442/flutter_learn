// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';
import 'package:learn/constans/RouteName.dart';
import 'package:learn/pages/Login.dart';
import 'package:learn/pages/FormTest.dart';
import 'package:learn/states/StateSelf.dart';
import 'package:learn/states/StateParent.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for material.AppBar.actions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        //key 值指定 路由表
        PAGE_LOGIN: (context) => Login(),
        PAGE_LOGIN_FORM: (context) => FormTest(),
        PAGE_STATE_SELF:(context)=>StateSelf(),
        PAGE_STATE_PARENT:(context)=>Parent()
      }, //路由表
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);


  /*
   * 构造 listview item 
   */
  Widget item(String text,String pageName,BuildContext context){
    return RaisedButton(
              child: Text(text),
              color: Colors.blue,
              textColor: Colors.white,
              colorBrightness: Brightness.dark,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
              ),
              onPressed: (){
                Navigator.of(context).pushNamed(pageName);
              });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.of(context).pushNamed(PAGE_LOGIN);
            },
          ),
        ],
      ),
      body:Center(
        child: ListView(
          children: <Widget>[
            item("TextFiled", PAGE_LOGIN, context),
            item("FormTextFiled", PAGE_LOGIN_FORM, context),
            item("StateSelf", PAGE_STATE_SELF, context),
            item("StateParent", PAGE_STATE_PARENT, context),
          ],
        ),
      )
    );
  }
}
