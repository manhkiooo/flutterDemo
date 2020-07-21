import 'package:flutter/material.dart';
import 'package:flutter_app/user.dart';

class LoginPageState extends State<LoginPage>{
  final User user = new User();
  @override
  Widget build(BuildContext context) {
    final TextField _txtUserName = new TextField(
      decoration: new InputDecoration(
        hintText: 'Tên đăng nhập',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType:  TextInputType.text,
      onChanged: (text){
        setState(() {
          this.user.userName = text;
        });
      },
    );
    final TextField _txtEmail = new TextField(
      decoration: new InputDecoration(
        hintText: 'Email',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType:  TextInputType.emailAddress,
      onChanged: (text){
        setState(() {
          this.user.email = text;
        });
      },
    );
    final TextField _txtPassWord = new TextField(
      decoration: new InputDecoration(
        hintText: 'Mật khẩu',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType:  TextInputType.text,
      obscureText: true,
      onChanged: (text){
        setState(() {
          this.user.passWord = text;
        });
      },
    );
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('title Appbar'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: new Text('Đăng Nhập', style: new TextStyle(fontSize: 25.0, color: Colors.blue[900], fontFamily: 'Pacifico'),),
          ),
          new Container(
            margin:  new EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
            decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border.all(width: 1.2, color: Colors.black12),
              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtUserName,
          ),
          new Container(
            margin:  new EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
            decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtEmail,
          ),
          new Container(
            margin:  new EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
            decoration: new BoxDecoration(
                color: Colors.blue[100],
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtPassWord,
          ),
          new Container(
            margin:  new EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0),
            decoration: new BoxDecoration(
              borderRadius: const BorderRadius.all(const Radius.circular(10.0))
            ),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new RaisedButton(
                        onPressed: (){
                          print('Tên đăng nhập: ${user.userName},'
                              'email: ${user.email}'
                              'Mật khẩu: ${user.passWord}'
                          );
                        },
                        color: Colors.blue,
                    child: new Text('Đăng nhập', style: new TextStyle(color: Colors.white, fontSize: 18.0),),))
              ],
            ),
          )

        ],),
    );
  }
}

class LoginPage  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginPageState();
  }
}