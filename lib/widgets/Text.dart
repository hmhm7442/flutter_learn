import 'package:flutter/material.dart';

/// Text 的简单使用

class PageText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Demo"),
      ),
      body: ListView(
        children: <Widget>[
          Text("Hello,world", textAlign: TextAlign.center),
          Text(
            "Hello *4" * 20,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text("hello", textScaleFactor: 1.5),
          Text(r'$$', semanticsLabel: 'Double dollars'),
          Text(
            "HELLO WORLD",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                background: new Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          ),
          Text(
            "HELLO WORLD",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                background: new Paint()..color = Colors.yellow,
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.wavy),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: "Baidu link:"),
            TextSpan(
                text: "http://www.baidu.com",
                style: TextStyle(color: Colors.blue))
          ]))
        ],
      ),
    );
  }
}
