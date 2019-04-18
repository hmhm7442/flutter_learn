import 'package:flutter/material.dart';

class PageFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 60),
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 50.0,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 60.0,
                color: Colors.green,
              ),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  height: 30.0,
                  color: Colors.blue,
                )),
            Expanded(
                flex: 3,
                child: Container(
                  height: 30.0,
                  color: Colors.grey,
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 100,
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(height: 30, color: Colors.red),
                ),
                Spacer(flex: 1),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
