import 'package:flutter/material.dart';


class PageStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          
          alignment: Alignment.center,
          children: <Widget>[
            Container(child: Text('hello flutter',style: TextStyle(color: Colors.white),),color: Colors.red),
            Positioned(left: 18.0,child: Text('i am jack')),
            Positioned(top: 18.0,child: Text('your friend'),),
            Positioned(left: 20.0,child: Text('I am jack')),
            Positioned(bottom: 20.0,child: Text("i am in botom",style: TextStyle(
              color: Colors.grey,
              fontStyle: FontStyle.italic,
              fontSize: 20
            ),),)

          ],
        ),
      ),
    );
  }

}


