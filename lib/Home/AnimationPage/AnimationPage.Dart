
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sencondfluuter/Tools/ColorTool.dart';

class AnimationPage extends StatefulWidget{

  @override
  _AnimationState createState() => _AnimationState();
}

class _AnimationState extends State<AnimationPage>{
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Animation'),
        // leading: FlatButton(
        //   child: new Text(
        //     '返回',
        //     style: TextStyle(
        //       fontSize: 12,
        //       color: ColorTool.hexColor('#FFFFFF')
        //     ),
        //   ),
        //   onPressed: (){
        //     Navigator.pop(context);
        //   },
        // ),

        // leading: new Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     new GestureDetector(
        //       onTap: (){
        //         Navigator.pop(context);
        //       },

        //       child: new Text("返回", textAlign: TextAlign.center),
        //     )
            
        //   ],
        // )

        // leading: new GestureDetector(
        //   onTap: (){
        //     Navigator.pop(context);
        //   },
          
        //   child: new Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       new Text("返回", textAlign: TextAlign.center)
        //     ],
        //   ),
        // ),

        leading: new Container(
          height: 49,
          width: 20,
          color: Colors.white,
          child: FlatButton(
            child: new Text(
              '返回',
              style: TextStyle(
                fontSize: 12,
                color: ColorTool.hexColor('#000000')
              ),
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        
      ),

      body: new Container(
        color: Colors.blue,
      ),
    );
  }
}