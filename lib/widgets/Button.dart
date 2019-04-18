import 'package:flutter/material.dart';

/// button 的简单使用
/// <a href>https://book.flutterchina.club/chapter3/buttons.html</a>
class PageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button展示"),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(child: Text("RaiseButton"), onPressed: () => {}),
          FlatButton(child: Text("FlatButton"), onPressed: () => {}),
          OutlineButton(child: Text("OutlineButton"), onPressed: () => {}),
          IconButton(icon: Icon(Icons.thumb_up), onPressed: () => {}),

          FlatButton(
            color:Colors.blue,
            highlightColor: Colors.blue[700],
            splashColor: Colors.grey,
            child: Text("Submit",style: TextStyle(
              color: Colors.white,
              fontSize: 26

            ),),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            onPressed: ()=>{}
          ),
          FlatButton(
            color:Colors.blue,
            colorBrightness: Brightness.dark,
            highlightColor: Colors.blue[700],
            splashColor: Colors.grey,
            child: Text("Submit",style: TextStyle(
              color: Colors.white,
              fontSize: 26
              
            ),),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            onPressed: ()=>{}
          ),
        ],
      ),
    );
  }
}
