import 'package:flutter/material.dart';
import 'package:sencondfluuter/Tools/ColorTool.dart';

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
        // width: 350,
        color: Colors.orange[500],
        child: new Column(
          children: <Widget>[
            new _MainTitle(),

            new Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              // padding: EdgeInsets.all(0),
              child: new _SubTitleWidget(),
            ),

            new Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: _StartsWidget(),
            ),


            new _COOKState(),

            new _rowTest()


          ],
        ),
      )
    );
  }
}

class _SubTitleWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text(
      '在第三国转机时需要重新托运行李和办理相关的出入境、过境手续。为了您的顺利出行，请务必核查该国(地区)的官方签证政策。',
      softWrap: true,
      overflow: TextOverflow.clip,
      textAlign: TextAlign.center,
      style: new TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _MainTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text(
      'iGola骑鹅旅行',
      style: new TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _StartsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      // 星星
      new Row(
        mainAxisAlignment: MainAxisAlignment.end,
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
    letterSpacing: 0.8
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

class _rowTest extends StatelessWidget{

  final _style = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorTool.hexColor("#323232")
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            alignment: Alignment.center,
            color: Colors.white,
            child: new Text("机票", style: this._style),
          ),
        ),

        Flexible(
          child: Container(
            child: new Text("酒店", style: this._style),
          ),
        )
      ],
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return new Row(
  //     children: <Widget>[
  //       Expanded(
  //         // flex: 2,
  //         child: Container(
  //           color: Colors.white,
  //           child: new Text("机票", style: this._style),
  //         ),
  //       ),

  //       Expanded(
  //         child: Container(
  //           child: new Text("酒店", style: this._style),
  //         ),
  //       )
  //     ],
  //   );
  // }

  // @override
  // Widget build(BuildContext context) => Row(
  //   children: <Widget>[
  //     new Container(
  //       child: new Text("机票", style: this._style),
  //       width: 300,
  //       color: ColorTool.hexColor('#ffffff'),
  //       alignment: Alignment.center,
  //     ),

  //     new Container(
  //       child: new Text("酒店", style: this._style,),
  //     )
  //   ],
  // );
}
