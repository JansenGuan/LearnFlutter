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
                onTap: (){
                  this._popPage(context);
                },
                
              ),
              new Stack(
                
                children: <Widget>[
                  new Container(
                    height: 300,
                    width: 300,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: new Text('login'),
                  ),

                  new ConstrainedBox(
                    constraints: BoxConstraints.tight(new Size(100, 20)),
                    child: new Image.asset("assets/iconFrame/icon_frame4.png"),
                  ),
                  
                  // new Container(
                  //   width: 100,
                  //   color: Colors.white,
                  //   alignment: Alignment.topCenter,
                  //   margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  //   child: new Image.asset("assets/iconFrame/icon_frame4.png"),
                  // ),

                  new Text(
                    "123",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto'

                    )
                  
                  )

                  
                ],
              )
            ],
          ),
        ),

        onTap: (){
          this._clikSuper(context);
        },
      ),

    );
  } 
}

class _popPage {
}