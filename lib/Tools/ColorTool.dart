

import 'package:flutter/cupertino.dart';

/// 颜色工具类, 16进制
class ColorTool{

  /// 颜色创建方法
  /// - [hex] 颜色值
  /// - [alpha] 透明度(默认1，0-1)
  /// 
  /// 可以输入多种格式的颜色代码，如: 0x000000,0xff000000,#000000
  static Color hexColor(String hex, {double alpha = 1}){
    String colorStr = hex.toUpperCase();

    // colorString未带0xff前缀并且长度为6 如"FFBBCC"
    if (!colorStr.startsWith('0XFF') && colorStr.length == 6){
      colorStr = '0XFF' + colorStr;
    }

    // colorString为8位，如0x000000
    if (colorStr.startsWith('0X') && colorStr.length == 8){
      colorStr = colorStr.replaceRange(0, 2, '0XFF');
    }

    // colorString为7位，如#000000
    if (colorStr.startsWith('#') && colorStr.length == 7){
      colorStr = colorStr.replaceRange(0, 1, '0XFF');
    }

    Color color = Color(int.parse(colorStr.toLowerCase()));
    int red = color.red;
    int green = color.green;
    int blue = color.blue;
    return new Color.fromRGBO(red, green, blue, alpha);
  }
}