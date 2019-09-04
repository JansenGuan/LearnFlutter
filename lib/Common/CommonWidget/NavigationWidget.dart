
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sencondfluuter/Tools/ColorTool.dart';
import 'package:sencondfluuter/Tools/FrameMath.dart';

typedef BackAction = void Function();
class NavigationWidget extends StatelessWidget{
  NavigationWidget({
    Key key,
    this.title,
    this.titleStyle,
    this.bgColor = Colors.white,
    this.backImgName,
    this.backAction
  }) : super(key : key);

  /// 标题
  final String title;

  /// 标题样式
  TextStyle titleStyle;

  /// 背景颜色
  Color bgColor;

  /// 返回按钮图片
  String backImgName;

  /// 返回按钮事件
  BackAction backAction;
  
  void backBtnDidClick(){

  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: this.bgColor,
      height: ScreenManager.navigationHeightDp,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, ScreenManager.statuBarHeightDp, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // 返回按钮
            Expanded(
              flex: 1,
              child: new InkWell(
                onTap: backAction,
                child: new Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: 44,
                      height: 44,
                      color: Colors.white,
                    ),

                    new Image(
                      image: AssetImage(this.backImgName),
                      height: 17,
                      width: 9,
                    ),
                  ],
                ),
              ),
            ),

            // 标题
            Expanded(
              flex: 7,
              child: Container(
                // alignment: Alignment.center,
                child: new Text(
                  this.title,
                  style: this.titleStyle, 
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center
                ),
              ),
            ),

            // 右边按钮
            Expanded(
              flex: 1,
              child: new Container(
                color: Colors.white,
              ),
            )
          ],
        ),
      )

    );
  }
}