import 'package:flutter/material.dart';
import "package:learn/builder/Builder.dart" as bd;


class LayoutList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局列表"),
      ),
      body: ListView(
        children: <Widget>[
            bd.Builder.buildListButtonItem("TextFiled", "", context)
        ],
      ),
    );
  }
}

