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
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: Text("探索"),
      ),

      body: new Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        height: 300,
        width: 300,
        color: Colors.orange[500],
        child: new Column(
          children: <Widget>[
            new Container(
              // margin: EdgeInsets.fromLTRB(0, 10, 0, 30),
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // 星星
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.black),
                    Icon(Icons.star, color: Colors.black),
                    Icon(Icons.star, color: Colors.black),
                    Icon(Icons.star, color: Colors.black),
                    Icon(Icons.star, color: Colors.black),
                  ]
                ),

                new Text(
                  "170 Reviews",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 20
                  ),
                    
                  )
              ],
              ),
            ),


            new _COOKState()
          ],
        ),
      )
    );
  }
}


class _COOKState extends StatelessWidget{
  _COOKState();
  
  final style = new TextStyle(
    color: Colors.black38,
    fontWeight: FontWeight.w800,
    fontSize: 18,
    fontFamily: 'Roboto',
    height: 1,
    letterSpacing: 1
  );
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTextStyle.merge(
        style: style,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Icon(Icons.kitchen, color: Colors.green[500]),
                new Text("PREP:"),
                new Text("25 min"),
              ],
            ),

            new Column(
              children: <Widget>[

                new Icon(
                      Icons.timer,
                      color: Colors.green[500]
                    ),
                new Text("COOK:"),
                new Text("1 hr")
              ],
            ),

            new Column(
              children: <Widget>[
                new Icon(
                  Icons.restaurant,
                  color: Colors.green[500],
                ),
                new Text("FEEDS:"),
                new Text("4-6")
              ],
            )
          ],
        )
      );
  }
}