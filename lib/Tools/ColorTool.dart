

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

    if (colorStr.startsWith('0X')) {
      if (colorStr.length == 8) { // 0xFFFFFF
        colorStr = colorStr.replaceRange(0, 2, '0XFF');

      }else if (colorStr.length == 10){ // 0xFF323232

      }else{
        assert('颜色十六进制只能为：0xFFFFFF、0xFF323232、#323232' == '0xFFFFFF、0xFF323232、#323232');
      }
    }else if (colorStr.startsWith('#') && colorStr.length == 7) { // #323232
      colorStr = colorStr.replaceRange(0, 1, '0XFF');
    }else{
      assert('颜色十六进制只能为：0xFFFFFF、0xFF323232、#323232' == '0xFFFFFF、0xFF323232、#323232');
    }
    
    Color color = Color(int.parse(colorStr.toLowerCase()));
    int red = color.red;
    int green = color.green;
    int blue = color.blue;
    return new Color.fromRGBO(red, green, blue, alpha);
  }
}