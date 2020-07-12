import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MainPage extends StatefulWidget{
  final String title;
  MainPage({this.title}): super();
  @override
  State<StatefulWidget> createState(){
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 220.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(27),
      ),

    );
  }

  List<Widget> _buildGridTiles(numberOfTiles){
    List<Stack> containers = new List<Stack>.generate(numberOfTiles,
            (index) {
          final imageName = 'images/a${index + 1}.jpg';
          return new Stack(
            alignment: const Alignment(0.8, 0.8),
            children: <Widget>[
              new Container(
                child: new Image.asset(imageName,
                  fit: BoxFit.fill,
                  width: 150.0,
                  height: 150.0,
                ),
              ),
              new Container(
                padding: const EdgeInsets.all(3.0),
                decoration: new BoxDecoration(
                    color: new Color.fromARGB(200, 71, 150, 236)
                ),
                child: new Text('manh${index + 1}', style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              )

            ],
          );
        });
    return containers;
  }
}

class MyApp extends StatelessWidget {
  final wordPair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Chao mung den voi Flutter",
      home:  new MainPage(title: "GridView Images"),
    );
  }
}

