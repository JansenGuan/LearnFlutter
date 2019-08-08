import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget{
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<CategoryPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: new AppBar(
        title: Text("分类"),
      ),
    );
  }
}