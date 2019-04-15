import 'package:flutter/material.dart';

class Parent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ParentState();
  }
}

class ParentState extends State<Parent> {
  bool _active = false;

  void hanleChange(bool value) {
    setState(() {
      this._active = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Child(active: _active,onChange: hanleChange,);
  }
}

class Child extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChange;

  Child({Key key, this.active, @required this.onChange}) : super(key: key);

  void childTap() {
    this.onChange(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: childTap,
      child: Container(
        child: Center(
          child: Text(
            active ? "active" : "inactive",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: active?Colors.green:Colors.grey
        ),
      ),
    );
  }
}
