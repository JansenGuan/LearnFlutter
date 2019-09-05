
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sencondfluuter/Tools/FrameMath.dart';

class LearnTimer extends StatefulWidget{
  @override
  _LearnTimerState createState() => _LearnTimerState();
}

class _LearnTimerState extends State<LearnTimer>{
  
  int _count = 0;
  Timer _timer;
  /// 开启定时器
  startTimer(){
    _timer = Timer.periodic(Duration(seconds: 1), _timeAction);
  }

  _timeAction(Timer timer){
    setState(() {
      if (_count > 0){
        _count = _count -1;
      }else{
        _removeTimer();
      }
    });
  }

  _removeTimer(){
    if (this._timer != null) {
      _timer.cancel();
      _timer = null;
    }
  }

  String _textContent(){
    return _count > 0 ? '$_count 后重新获取' : '获取验证码';
  }

  _pressAction(){
    if (_count <= 0) {
      setState(() {
        _count = 20;
        startTimer();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    this._removeTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('定时器'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(ScreenManager.setMath(10)),
              child: new Text(
                // textContent()
                _count > 0 ? '$_count 后重新获取' : '获取验证码'
              ),
            ),

            new FlatButton(
              onPressed: () => {
                _pressAction(),
              },
              child: new Text('开启定时器获取验证码'),
            ) ,

            new Offstage(
              offstage: _count == 0 ? true : false,
              child: new Text('显示我Offstage，不占空间大小(out Of the tree)'),
            ),

            new AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _count == 0 ? 0 : 1,
              child: new Container(
                height: 100,
                color: Colors.redAccent,
                child: new Text(
                  'AnimatedOpacity透明度，占用空间(in the tree)'
                ),
              ),
            ),


            new Text('fdasdfasfa')
          ],
        ),
      ),
    );
  }
}