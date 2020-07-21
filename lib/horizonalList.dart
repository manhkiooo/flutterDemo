import 'dart:ui';

import 'package:flutter/material.dart';
import 'mainPage.dart';
import 'loginPage.dart';

void main() => runApp(new MyApp());//one-line function

class HorizonalListState extends State<HorizonalList>{
  @override
  Widget build(BuildContext context) {
    final  screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      body: new Container(
          child: new ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
              new Container(
                width: screenSize.width,
                height: screenSize.height,
                color: Colors.red,
                child: new Center(
                  child: new Text('Trang màu đỏ', style: new TextStyle(color: Colors.white, fontSize: 35.0),),
                ),
              ),
              new Container(
                width: screenSize.width,
                height: screenSize.height,
                color: Colors.green,
                child: new Center(
                  child: new Text('Trang màu xanh lá', style: new TextStyle(color: Colors.white, fontSize: 35.0),),
                ),
              ),
              new Container(
                width: screenSize.width,
                height: screenSize.height,
                color: Colors.pink,
                child: new Center(
                  child: new Text('Trang màu hồng', style: new TextStyle(color: Colors.white, fontSize: 35.0),),
                ),
              ),
              new Container(
                width: screenSize.width,
                height: screenSize.height,
                color: Colors.blue,
                child: new Center(
                  child: new Text('Trang màu xanh da trời', style: new TextStyle(color: Colors.white, fontSize: 35.0),),
                ),
              )
            ],
          )
      ),
    );
  }
}

class HorizonalList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HorizonalListState();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Tabs example",
      home:new HorizonalList(),
    );
  }
}
