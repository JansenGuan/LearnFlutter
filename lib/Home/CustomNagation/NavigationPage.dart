import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sencondfluuter/Common/CommonWidget/NavigationWidget.dart';
import 'package:sencondfluuter/Tools/ColorTool.dart';
import 'package:sencondfluuter/Tools/FrameMath.dart';

class NavigationPage extends StatefulWidget{
  @override
  _NavigaitionState createState() => _NavigaitionState();
}

class _NavigaitionState extends State<NavigationPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          NavigationWidget(
            title: '我的',
            backImgName: 'assets/navigationBarImg/44x_arrow_back.png',
            bgColor: Colors.orange,
            titleStyle: new TextStyle( fontSize: 17,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto',
              color: ColorTool.hexColor('#323232'),
            ),
            backAction: (){
              Navigator.pop(context);
            },
          ),

          new Image.asset('assets/navigationBarImg/44x_arrow_back.png'),

          Container(
            width: 120,
            height: 50,

            child: FlatButton.icon(
              icon: new Image(
                image: AssetImage('assets/navigationBarImg/44x_arrow_back.png'),
                height: 17, //ScreenManager.setMath(34),
                width: 9, //ScreenManager.setMath(18),
                // height: ScreenManager.setMath(34),
                // width: ScreenManager.setMath(18),
              ),

              label: new Text(
                'FlatB'
              ),
              onPressed: (){
                
              },
            ),

            // child: FlatButton(
              
            //   onPressed: (){
            //     print('FlatBuFlatButtonFlatButtonFlatButton');
            //   },

            //   child: Text(
            //     'FlatBuFlatButtonFlatButtonFlatButtonFlatBuFlatButtonFlatButtonFlatButton',
            //     style: TextStyle(
            //       // color: Colors.orange
            //     ),
            //     softWrap: true,
            //     overflow: TextOverflow.ellipsis,
            //     maxLines: 2,
            //     textAlign: TextAlign.center
            //   ),
            //   textColor: Colors.white,
            //   color: Colors.black,
            //   disabledTextColor: Colors.grey,
            //   disabledColor: Colors.red,
            //   onHighlightChanged: (value){
            //     print(value);
            //   },
            //   // shape: CircleBorder(side: BorderSide(width: 3,color: Colors.orange)),
            //   shape: RoundedRectangleBorder(
            //     side: BorderSide(width: 5, color: Colors.red),
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //   ),
            // ),
          ),



        ],
      ),
    );
  }
}