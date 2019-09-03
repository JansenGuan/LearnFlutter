
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sencondfluuter/Home/ListTitle/HomeListTitlePage.dart';
import 'package:sencondfluuter/Mine/Login/LoginPage.dart';
import 'package:sencondfluuter/Tools/ColorTool.dart';

class HomePage extends StatelessWidget{
  
  final TextEditingController controller = TextEditingController();
  final FocusNode node = FocusNode();
  poplist(){
    return false;
  }

  void _popLast(BuildContext cont){
    Navigator.pop(cont, RouteSettings(name: "首页返回"));
    var mediaQData = MediaQuery.of(cont);
    var screenWith = mediaQData.size.width;
    debugPrint('$screenWith');
  }

  /// 跳转
  void _pushToSecondPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(), settings: RouteSettings(arguments: 'laizihome')));
  }

  void _pushToTitleList(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeListTitlePage()));
  }

  /// Transform
  Widget _getBody() => Container(
    margin: EdgeInsets.all(100),
    color: Colors.black,
    child: Transform(
      alignment: Alignment.center,
      transform: Matrix4.skewY(0)..rotateZ(-pi/4.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: const Color(0xFFE8581C),
        child: const Text('Apartment for rent!'),
      ),
    ),
  );

  /// TextField
  Widget _TextField() => new Padding(
    child: TextField(
      style: TextStyle(
        color: ColorTool.hexColor("#323232"),
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),

      decoration: InputDecoration(
        hintText: "hello iGola",
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        // border: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.all(5),
        icon: new Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          color: Colors.white,
          child: new Image(
            height: 20,
            width: 30,
            image: AssetImage('assets/images/hotels_activated.png'),
          ),
        ),
        
        fillColor: Colors.white,
        filled: true,
      ),
      
      // onChanged: (value){
      //   print(value);
      // },
      controller: controller,
      focusNode: node
    ), 
    padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
  );

  Widget _Inwalk() => InkWell(

  );

  Widget _imgGesWidget(context) => new Container(
        // width: MediaQuery.of(context).size.width,
        color: Colors.orange,
        alignment: Alignment.center,
        child: GestureDetector(
          // child: new Text("登陆"),Image.asset('new_member_country_nodatal_img.png')
          child: new Container(
            // height: 30,
            // width: 30,
            child: new Image(
              height: 30,
              width: 30,
              image: AssetImage('assets/images/hotels_activated.png'),
            ),
          ),
          // child: Image.asset("assets/images/hotels_activated@3x.png"),
          onTap: () {
            // this._pushToSecondPage(context);
            _pushToTitleList(context);
          },
        ),
        
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    controller.addListener((){
      print(controller);
      // node.unfocus();
    });

    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: new Text("首页",
          style: Theme.of(context).textTheme.display1.copyWith(fontSize: 16, color: Colors.white)
        ),
      ),

      // body: _getBody()
      body: _imgGesWidget(context),
      // body: _TextField(),
    );
  }
}