import 'package:flutter/material.dart';

class Builder {

  ///创建 button 为 listview 的 item
  static Widget buildListButtonItem(
      String text, String pageName, BuildContext context) {
    return RaisedButton(
        child: Text(text),
        color: Colors.blue,
        textColor: Colors.white,
        colorBrightness: Brightness.dark,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        onPressed: () {
          Navigator.of(context).pushNamed(pageName);
        });
  }
}
