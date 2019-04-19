import 'package:flutter/material.dart';

class PageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PageDemoState();
  }
}

class PageDemoState extends State with SingleTickerProviderStateMixin {
  int _curIndex = 1;

  TabController _tabController;
  List tabs = ["News", "History", "Iamge"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  void clickShare(BuildContext ctx) {
    Scaffold.of(ctx).openDrawer();
  }

  void clickTab(int index) {
    setState(() {
      _curIndex = index;
    });
  }

  void clickFloat() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP name'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              clickShare(context);
            },
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((t)=>Tab(text:t)).toList(),
          // onTap: clickTab,
        ),
      ),
      drawer: MyDrawer() ,
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((tab){
          return Container(
            alignment: Alignment.center,
            child: Text(tab,textScaleFactor: 5,style: TextStyle(color: Colors.blue),),
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text("School"))
        ],
        currentIndex: _curIndex,
        fixedColor: Colors.blue,
        onTap: clickTab,
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: clickFloat,
      ),
    );
  }
}

class MyDrawer  extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset("images/octocat.png",width:80),
                    ),
                  ),
                  Text("touny",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(leading: const Icon(Icons.add),title: const Text("Add account")),
                  ListTile(leading: const Icon(Icons.settings),title: const Text("Manage accounts")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
