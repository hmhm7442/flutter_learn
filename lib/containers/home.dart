import 'package:flutter/material.dart';


class PageConstrained extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: ListView(

        children: <Widget>[


        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red,Colors.orange[700]]),
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Colors.pink,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0
              )
            ]
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 18.0),
            child: Transform(
              transform: Matrix4.skewX(0.3),
              child: Text("Login",style: TextStyle(color: Colors.white),),
            )
          ),
        )
        


        ],
      ),
    );
  }
}