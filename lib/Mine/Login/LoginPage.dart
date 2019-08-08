import 'dart:io';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<LoginPage>{

  _popPage(context){
    Navigator.pop(context);
  }

  _clikSuper(event){
    print("ghjkh");
    print(event);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      

      body: new GestureDetector(
        child: Container(
          height: 400,
          width: 400,
          margin: EdgeInsets.fromLTRB(7, 88, 7, 0),
          color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new GestureDetector(
                child: new Icon(
                  Icons.backspace
                ),
                onTap: () => {
                  this._popPage(context),
                },
                
              ),
              new Container(
                height: 300,
                width: 300,
                color: Colors.red,
                alignment: Alignment.center,
                child: new Text('login'),
              )
            ],
          ),
        ),

        onTap: () => {
          this._clikSuper(context),
        },
      ),

    );
  } 
}

class _popPage {
}