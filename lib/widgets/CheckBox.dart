import 'package:flutter/material.dart';
///
class PageCheck extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageCheckState();
  }
}

class PageCheckState extends State<PageCheck>{
  bool _switch = false;
  bool _check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
      body: Column(
        children: <Widget>[
          Switch(
            value: _switch,
            activeColor: Colors.greenAccent,
            onChanged: (value) {
              setState(() {
                _switch = !_switch;
              });
            },
          ),
          Checkbox(
            value: _check,
            activeColor: Colors.blue,
            onChanged: (value) {
              setState(() {
                _check=!_check;
              });
            },
          )
        ],
      ),
    );
  }
}
