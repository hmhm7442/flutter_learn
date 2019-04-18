import 'package:flutter/material.dart';

class PageRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('row Demo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('hello'), Text('row')],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('hello'), Text('row')],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[Text('123'), Text('456')],
          ),
          Container(
            color: Colors.blue,
            child: Row(
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text(
                'hello',
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
              Text('row')
            ],
          ),
          ),
          Container(
            color: Colors.blue[700],
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('1'),
                    Text('1'),
                    Text('1121212121212121'),
                    Text('1'),
                  ],
                ),
          )
        ],
      ),
    );
  }
}
