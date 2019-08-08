import 'package:flutter/material.dart';

class MinePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MineState();
  }
}

class _MineState extends State<MinePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('我的'),
      ),
    );
  }
}