
import 'package:flutter/material.dart';
import 'package:sencondfluuter/Mine/Login/LoginPage.dart';

class HomePage extends StatelessWidget{

  poplist(){
    return false;
  }

  void _popLast(BuildContext cont){
    Navigator.pop(cont, RouteSettings(name: "首页返回"));
    final mediaQData = MediaQuery.of(cont);
    final screenWith = mediaQData.size.width;
    debugPrint('$screenWith');
  }

  /** 跳转 */
  void _pushToSecondPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(), settings: RouteSettings(arguments: 'laizihome')));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: new Text("首页",
          style: Theme.of(context).textTheme.display1.copyWith(fontSize: 16, color: Colors.white)
        ),
      ),

      body: new Container(
        height: 200,
        width: 200,
        color: Colors.orange,
        alignment: Alignment.center,
        child: GestureDetector(
          // child: new Text("登陆"),Image.asset('new_member_country_nodatal_img.png')
          child: new Image(
            image: AssetImage('hotels_activated.png'),
          ),
          onTap: () => {
            this._pushToSecondPage(context)
          },
        ),
        
      ),
    );
  }
}