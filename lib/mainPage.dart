import 'package:flutter/material.dart';

class MainPageState extends State<MainPage>{
  var title = '';
  Drawer _buildDrawer(context){
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Container(
              child: new Column(
                mainAxisAlignment:  MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image.asset('images/anhdd.jpg', width: 100.0,height: 100.0,fit: BoxFit.fill,),
                  new Text('Phạm Văn Mạnh', style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),),
                  new Text('Lập trình viên', style: new TextStyle(color: Colors.white, fontSize: 15.0),),
                ],
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
          ),
          new ListTile(
            leading:  new Icon(Icons.photo_album),
            title: new Text('Ảnh'),
            onTap: (){
              setState(() {
                this.title = 'Không có cái hình cào ở đây cả';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading:  new Icon(Icons.notifications),
            title: new Text('Thông báo'),
            onTap: (){
              setState(() {
                this.title = 'Không có thông báo nào cả';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading:  new Icon(Icons.settings),
            title: new Text('Cài đặt'),
            onTap: (){
              setState(() {
                this.title = 'Có cái qq j đâu mà cài đặt';
              });
              Navigator.pop(context);
            },
          ),
          new Divider(
            color: Colors.black45,
            indent: 16.0,
          ),
          new ListTile(
            title: new Text('Giới thiệu'),
            onTap: (){
              setState(() {
                this.title = 'App cùi bắp của Mạnh';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text('Chính sách'),
            onTap: (){
              setState(() {
                this.title = 'Chính sách l234567890';
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar:  new AppBar(
        title: new Text("Drawer in flutter"),
      ),
      body: new Center(
        child: new Text(this.title, style:  new TextStyle(fontSize: 25.0),),
      ),
      drawer: _buildDrawer(context),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}