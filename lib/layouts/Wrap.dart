import 'package:flutter/material.dart';


class PageWrap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return 
    
    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Wrap'),
      ),
      body: Wrap(
      spacing: 8,
      runSpacing: 4,
      alignment: WrapAlignment.center,
      children: <Widget>[
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('A')),
          label: Text('hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.red,child: Text('M')),
          label: Text('hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.grey,child: Text('H')),
          label: Text('hamilton'),
        ),
          Chip(
          avatar: CircleAvatar(backgroundColor: Colors.grey,child: Text('H')),
          label: Text('hamilton'),
        ),
          Chip(
          avatar: CircleAvatar(backgroundColor: Colors.grey,child: Text('H')),
          label: Text('hamilton'),
        ),
      ],
    ),
    );
    
    
  }

}