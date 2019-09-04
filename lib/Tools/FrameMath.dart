
import 'dart:ui';
import 'package:flutter/material.dart';

/// 设计尺寸
final designSize = Size(750, 1334);

/// 屏幕宽高, 单位px
final screenWidth = window.physicalSize.width;
final screenHeight = window.physicalSize.height;

/// 适配方法
/// - number单位为px
/// - allowSacling是否需要适配，默认true
/// - 返回值单位为dp，flutter中默认组件尺寸为dp
double frameMath(double number, {bool allowSacling = true}){
  return allowSacling ? 
  number * screenWidth / designSize.width / window.devicePixelRatio : 
  number / window.devicePixelRatio;
}



/// 使用之前一定得初始化并调用init(context)
class ScreenManager{
  /// 设计尺寸宽高
  double width;
  double height;
  /// 是否允许适配
  bool allowScaling;
  
  static final ScreenManager instance = ScreenManager();

  static ScreenManager share() => instance;

  ScreenManager({
    this.width = 750, 
    this.height = 1334, 
    this.allowScaling = true
  });

  void init(BuildContext context){
    MediaQueryData queryData = MediaQuery.of(context);
    _queryData = queryData;
    _pixelRation = queryData.devicePixelRatio;
    _statuBarHeight = queryData.padding.top;
    _bottomBarHeight = queryData.padding.bottom;
    _textScale = queryData.textScaleFactor;
    _screenWidth = queryData.size.width;
    _screenHeight = queryData.size.height;
    _screenScale = queryData.size.width * queryData.devicePixelRatio / instance.width;
  }

  /// MediaQueryData
  static MediaQueryData _queryData;
  static MediaQueryData get queryData => _queryData;

  /// 屏幕像素密度@2x/@3x
  static double _pixelRation;
  static double get pixelRation => _pixelRation;

  /// 状态栏高度 dp
  static double _statuBarHeight;
  static double get statuBarHeightDp => _statuBarHeight;

  /// 导航条navigation 高度
  static double get navigationHeightDp => (56+_statuBarHeight);

  /// 底部tabbar safe zone dp
  static double _bottomBarHeight;
  static double get bottomBarHeightDp => _bottomBarHeight;

  /// tabBar 高度
  static double get tabBarHeightDp => (49+_bottomBarHeight);

  /// 系统字体缩放比例
  static double _textScale;
  static double get textScale => _textScale;

  /// 屏幕宽度 单位：Dp/Px
  static double _screenWidth;
  static double get screenWidthDp => _screenWidth;
  static double get screenWidthPx => _screenWidth * _pixelRation;

  /// 屏幕高度 单位：Dp/Px
  static double _screenHeight;
  static double get screenHeightDp => _screenHeight;
  static double get screenHeightPx => _screenHeight * _pixelRation;

  /// 屏幕比例
  static double _screenScale;
  static double get screenScale => _screenScale;

  /// 宽高适配
  /// - number具体尺寸，单位px
  /// - 返回值单位 dp
  static double setMath(double number){
    return number / _pixelRation * _screenScale;
  }

  /// 字体设置
  /// - fontSize字体的大小，单位px
  /// - allowFontScaling是否要根据系统的“字体大小”辅助选项来进行缩放
  /// - 返回值单位 dp
  static setFontMath(double fontSize,{bool allowFontScaling = true}) => allowFontScaling 
          ? setMath(fontSize)*_textScale 
          : setMath(fontSize);
          
}
