
import 'package:flutter/material.dart';

/// tabbarItem
class TabBarItem extends StatefulWidget {
  
  TabBarItem(
    this.selectedIndex,
    this.index,
    this.title, 
    this.nomalImg, 
    this.selectedImg, 
    this.normalColor, 
    this.selectedColor, 
    {Key key}) : super(key: key);
  
   final int selectedIndex;
   final int index;
   final String title;
   final String nomalImg;
   final String selectedImg;
   final Color normalColor;
   final Color selectedColor;
  @override
  _TabBarItemState createState() => _TabBarItemState(
    this.selectedIndex,
    this.index,
    this.title, 
    this.nomalImg, 
    this.selectedImg, 
    this.normalColor, 
    this.selectedColor, 
  );
}

/// _TabBarItemState
/// -
class _TabBarItemState extends State<TabBarItem>{
  _TabBarItemState(
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