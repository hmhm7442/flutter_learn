// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';
import 'package:learn/constans/PagesName.dart';
import 'package:learn/layouts/Flex.dart';
import 'package:learn/layouts/Row.dart';
import 'package:learn/layouts/Wrap.dart';
import 'package:learn/pages/Login.dart';
import 'package:learn/pages/FormTest.dart';
import 'package:learn/states/StateSelf.dart';
import 'package:learn/states/StateParent.dart';
import 'package:learn/widgets/Button.dart';
import 'package:learn/widgets/CheckBox.dart';
import 'package:learn/widgets/Image.dart';
import 'package:learn/widgets/Text.dart';
import 'builder/Builder.dart' as bd;
import 'widgets/home.dart';
import 'layouts/home.dart' ;




/// main method
void main() => runApp(MyApp());


///  https://book.flutterchina.club/
///
///
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
        PAGE_STATE_SELF: (context) => StateSelf(),
        PAGE_STATE_PARENT: (context) => Parent(),
        PAGE_WIDGETS_TEXT: (context) => PageText(),
        PAGE_WIDGETS_BUTTON: (context) => PageButton(),
        PAGE_WIDGETS_IMAGE: (context) => PageImage(),
        page_widgets_check: (context) => PageCheck(),
        page_list_widgets:(context)=> WidgetsList(),
        page_list_layouts:(context)=> LayoutList(),
        page_row : (context)=> PageRow(),
        page_flex: (context)=> PageFlex(),
        page_wrap:(context)=> PageWrap(),
      }, //路由表
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);


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
        body: Center(
          child: ListView(
            children: <Widget>[
              bd.Builder.buildListButtonItem("Widgets", page_list_widgets, context),
              bd.Builder.buildListButtonItem("Layouts", page_list_layouts, context),
            ],
          ),
        ));
  }
}
