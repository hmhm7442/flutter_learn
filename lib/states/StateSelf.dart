import 'package:flutter/material.dart';

class StateSelf extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateSelfState();
  }
}

class StateSelfState extends State<StateSelf> {
  bool _active = false; //初始化状态

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? "Active" : "Inactive",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 20.0,
        height: 20.0,
        decoration:
            BoxDecoration(color: _active ? Colors.greenAccent : Colors.grey),
      ),
    );
  }
}
