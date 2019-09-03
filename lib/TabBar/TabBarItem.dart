
import 'package:flutter/material.dart';

/// TabBarItem
/// -
class TabBarItem extends StatelessWidget{
  TabBarItem(
    this.selectedIndex,
    this.index,
    this.title, 
    this.nomalImg, 
    this.selectedImg, 
    this.normalColor, 
    this.selectedColor, 
  );

   int selectedIndex;
   int index;
   String title;
   String nomalImg;
   String selectedImg;
   Color normalColor;
   Color selectedColor;
   double imgHW = 30;
   double imgTopGap = 5;
   double imgBtmGap = 5;
  @override
  Widget build(BuildContext context) {
    // TabController
    // AnimationController
    // ScrollController
    // CustomScrollView
    // TabBar
    return new InkWell(
      // onTap: (){
        
      // },

      child: Container(
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                // 图片
                new Padding(
                  padding: EdgeInsets.fromLTRB(0, imgTopGap, 0, imgBtmGap),
                  child: new Image(
                    height: imgHW,
                    width: imgHW,
                    image: index == selectedIndex ? AssetImage(selectedImg) : AssetImage(nomalImg),
                  ),
                ),

                // 标题
                new Text(
                  '$title',
                  style: TextStyle(
                    color: index == selectedIndex ? selectedColor : normalColor,
                    fontSize: 10,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}