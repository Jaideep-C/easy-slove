import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:Scaffold(
          body: TabBarView(
            children: <Widget>[
              Scaffold(
                appBar: AppBar(backgroundColor: Colors.white10,),
              ),
              Container(color: Colors.orange,),
              Container(
                color: Colors.lightGreen,
              ),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.rss_feed),
              ),
              Tab(
                icon: Icon(Icons.perm_identity),
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xffe46b10),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              gradient: LinearGradient(
                colors: [Color(0xfffbb448),Color(0xffe46b10)],
              ),
            ),
          ),
          backgroundColor: Colors.white10,
        ),
      );
  }
}