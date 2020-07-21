import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp1());


class MyApp1 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _showSnackBar(){
    print("Show sackbar");
    final snackBar = new SnackBar(
      content: new Text("Content of Sackbar!!!"),
      duration: new Duration(seconds: 3),
      backgroundColor: Colors.lightBlue,
      action: new SnackBarAction(label: 'Ok', onPressed: (){
        print('Press Ok');
      }, textColor: Colors.white,),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Snackbar Flutter",
      home: new Scaffold(
        key: _scaffoldKey,
        appBar: new AppBar(
          title: new Text("Snack Bar Flutter Appbar"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.info) , onPressed: _showSnackBar)
          ],
        ),
        body: new Text("Manh OK"),
      ),
    );

  }
}

