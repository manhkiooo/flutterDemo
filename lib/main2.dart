import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp3());

class MyApp3 extends StatelessWidget {
  final wordPair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Chao mung den voi Flutter",
      home: RadomWords(),
    );
  }
}

class RadomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RadomWords> {
  final List<WordPair> _wordPair = <WordPair>[];
  final Set<WordPair> _saved = new Set<WordPair>();
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text('Text AppBar'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index) {
          if (index.isOdd) return Divider();

          if (index >= _wordPair.length) {
            _wordPair.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_wordPair[index]);
        }),
      ),
    );
  }

  Widget _buildRow(WordPair wordPair) {
    final bool alreadySave = _saved.contains(wordPair);
    return ListTile(
      title: Text(
        wordPair.asCamelCase,
        style: const TextStyle(fontSize: 18.0),
      ),
      trailing: new Icon(
        alreadySave ? Icons.favorite : Icons.favorite_border,
        color: alreadySave ? Colors.red : null,

      ),
      onTap: () {
        setState(() {
          if (alreadySave) {
            _saved.remove(wordPair);
          } else {
            _saved.add(wordPair);
          }
        });
      },


    );
  }

  void _pushSaved(){
    Navigator.of(context).push(
        new MaterialPageRoute(builder: (BuildContext context){
          final Iterable<ListTile> tiles = _saved.map((WordPair pair){
            return new ListTile(
              title: new Text(
                pair.asPascalCase,
                style: const TextStyle(fontSize: 18.0),
              ),
            );
          });

          final List<Widget> divided = ListTile.divideTiles(tiles: tiles, context: context).toList();
          return new Scaffold(
            appBar:  new AppBar(
              title: const Text('Saved List'),
            ),
            body:  new ListView(children: divided),
          );
        })
    );
  }
}

