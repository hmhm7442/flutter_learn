import 'package:flutter/material.dart';
import 'package:learn/constans/PagesName.dart';
import "package:learn/builder/Builder.dart" as bd;


class WidgetsList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("组件列表"),
      ),
      body: ListView(
        children: <Widget>[
              bd.Builder.buildListButtonItem("TextFiled", PAGE_LOGIN, context),
              bd.Builder.buildListButtonItem("FormTextFiled", PAGE_LOGIN_FORM, context),
              bd.Builder.buildListButtonItem("StateSelf", PAGE_STATE_SELF, context),
              bd.Builder.buildListButtonItem("StateParent", PAGE_STATE_PARENT, context),
              bd.Builder.buildListButtonItem("TextDemo", PAGE_WIDGETS_TEXT, context),
              bd.Builder.buildListButtonItem("ButtonDemo", PAGE_WIDGETS_BUTTON, context),
              bd.Builder.buildListButtonItem("ImageDemo", PAGE_WIDGETS_IMAGE, context),
              bd.Builder.buildListButtonItem("CheckDemo", page_widgets_check, context)
        ],
      ),
    );
  }

}

