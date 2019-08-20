import 'package:flutter/material.dart';

class CartPage extends StatefulWidget{
  @override
  _CartState createState() => _CartState();
}

/// 购物车
class _CartState extends State<CartPage>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("购物车"),
      ),
      body: new Container(
        height: 300,
        width: 300,
        decoration: new BoxDecoration(
          color: Colors.black26,
          border: Border.all(color: Colors.red, width: 10),
          borderRadius: new BorderRadius.all(const Radius.elliptical(10, 10))
        ),
        child: _ContainerWidget()
      ),
    );
  }
}


/// flex布局
/// container decoration 练习
class _ContainerWidget extends StatelessWidget{
  _ContainerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Expanded(
                  
                  child: new Container(
                    height: 30,
                    decoration: new BoxDecoration(
                      border:  new Border.all(width: 5, color: Colors.black38),
                      borderRadius: const BorderRadius.all(const Radius.circular(8))
                    ),
                    margin: const EdgeInsets.all(4),
                    child: new Image.asset("assets/images/hotels_activated.png"),
                  ),
                ),

                new Expanded(
                  child: new Container(
                    height: 100,
                    decoration: new BoxDecoration(
                      border:  new Border.all(width: 5, color: Colors.black38),
                      borderRadius: const BorderRadius.horizontal(
                        left: const Radius.circular(8)
                      )
                    ),
                    margin: const EdgeInsets.all(4),
                    child: new Image.asset("assets/images/hotels_activated.png"),
                  ),
                ),

                new Expanded(
                  child: new Container(
                    height: 100,
                    decoration: new BoxDecoration(
                      border:  new Border.all(width: 5, color: Colors.black38),
                      borderRadius: const BorderRadius.vertical(
                        top: const Radius.circular(8)
                      )
                    ),
                    margin: const EdgeInsets.all(4),
                    child: new Image.asset("assets/images/hotels_activated.png"),
                  ),
                ),

                new Expanded(
                  child: new ClipOval(
                    child: new Container(
                      height: 100,
                      width: 100,
                      color: Colors.black38,
                      child: new Image.asset("assets/images/hotels_activated.png"),
                    ),
                  ),
                )
              ],
            )
          ],
        );
  }
}