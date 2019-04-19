import 'package:flutter/material.dart';
import "package:learn/builder/Builder.dart" as bd;
import 'package:learn/constans/PagesName.dart';

class LayoutList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局列表"),
      ),
      body: ListView(
        children: <Widget>[
          bd.Builder.buildListButtonItems("Row 横向布局", () {
            Navigator.pushNamed(context, page_row);
          }, context),

          bd.Builder.buildListButtonItem("Flex 弹性布局", page_flex, context),
          bd.Builder.buildListButtonItem("Wrap 自动扩容", page_wrap, context),
          bd.Builder.buildListButtonItem("Stack 层叠布局", page_stack, context),
          
        ],
      ),
    );
  }
}
