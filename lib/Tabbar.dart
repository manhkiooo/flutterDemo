import 'dart:ui';

import 'package:flutter/material.dart';
import 'sackBar.dart';
import 'gridView.dart';
import 'CardVisit.dart';
import 'main2.dart';

void main() => runApp(new MyApp());//one-line function

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    final tabController = new DefaultTabController(
      length: 4,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Tic CMS", style: new TextStyle(fontFamily: 'Pacifico'),),
          bottom: new TabBar(
              indicatorColor: Colors.lightBlue,
              indicatorWeight: 2.0,
              tabs: [
                new Tab(icon: new Icon(Icons.home),text: "Trang chủ"),
                new Tab(icon: new Icon(Icons.group),text: "Nhóm"),
                new Tab(icon: new Icon(Icons.chat_bubble), text: "Liên lạc",),
                new Tab(icon: new Icon(Icons.cloud_queue), text: "Cloud",)
              ]),
        ),
        body: new TabBarView(
            children: [
              new MyApp1(),
              new MyApp2(),
              new MyApp3(),
              new MyApp4()
            ]
        ),
      ),
    );
    return new MaterialApp(
        title: "Tabs example",
        home: tabController
    );
  }
}

