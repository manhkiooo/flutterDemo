import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  title: 'Flutter  Tutorial',
  home: TutorialHome(),
));

class TutorialHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: IconButton(icon: Icon(Icons.menu), tooltip: 'Navigation menu', onPressed: null),
       title: Center(
         child: Text('Text title'),
       ),
       actions: <Widget>[
         IconButton(
           icon: Icon(Icons.search),
           tooltip: 'Tim',
           onPressed: null,
         )
       ],
     ),
     body:  Center(
       child: Text('Hello Manh'),
     ),
     floatingActionButton: FloatingActionButton(
       tooltip: 'Them',
       child: Icon(Icons.add),
       onPressed: null,
     ),
   );
  }
}