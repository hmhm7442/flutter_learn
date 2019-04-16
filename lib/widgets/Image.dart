import 'package:flutter/material.dart';

class PageImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image 各种用法"),
      ),

      body: ListView(
        children: <Widget>[
          Image.asset("images/octocat.png",width: 100,height: 100),
          Image.network( "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",width: 100,height: 100),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("images/octocat.png"),
            
          ),
          ClipOval(
            child:Image.network( "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4")
          ),
          ClipOval(
            child:Image.asset("images/octocat.png") 
          ),

          Image(
            image: AssetImage("images/octocat.png"),
            width: 100,
            height: 100,
            color: Colors.grey,
            colorBlendMode: BlendMode.difference,
          )



        ],
      ),

      floatingActionButton: Icon(Icons.ac_unit),
      
    );
  }

}