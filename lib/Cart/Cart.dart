import 'package:flutter/material.dart';

class CartPage extends StatefulWidget{
  @override
  _CartState createState() => _CartState();
}

/// 购物车
class _CartState extends State<CartPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("购物车"),
      ),
    );
  }
}