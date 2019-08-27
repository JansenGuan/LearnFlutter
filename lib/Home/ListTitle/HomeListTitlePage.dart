
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sencondfluuter/Tools/ColorTool.dart';

class HomeListTitlePage extends StatefulWidget{
  HomeListTitlePage({Key key}) : super(key: key);
  
  @override
  _HomeListTitleState createState() => _HomeListTitleState();
}

class _HomeListTitleState extends State<HomeListTitlePage>{

  List<Widget> _createListTitles(count){
    List<Widget> list = [];
    for(int i = 0; i < count; i++){
      list.add(new ListTile(
              title: new Text("iGola 比价"),
              leading: new Container(
                width: 30,
                height: 30,
                child: new Image.asset("assets/images/hotels_activated.png"),
              )
            ));
    }
    return list;
  }

  Widget _listTitleForIndexPath(context, index){
    return new Padding(
      padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
      child: new Text(
                "点我",
                style: new TextStyle(
                  color: ColorTool.hexColor("#b3b3b3"),
                  fontSize: 13,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return new Container(
      color: ColorTool.hexColor('#eeeeee'),
      child: new Stack(
        children: <Widget>[
          // ListView.builder(
          //   itemCount: 30, 
          //   itemBuilder: _listTitleForIndexPath,

          // ),
          new Center(
            child: new ListView(
            children: <Widget>[
              new ListTile(
                title: new Text('The Castro Theater',
                    style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
                subtitle: new Text('429 Castro St'),
                leading: new Icon(
                  Icons.theaters,
                  color: Colors.blue[500],
                ),
              ),

              new ListTile(
                title: new Text('The Castro Theater',
                    style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
                subtitle: new Text('429 Castro St'),
                leading: new Icon(
                  Icons.theaters,
                  color: Colors.blue[500],
                ),
              )
            ],
          ),
          ),

          new Container(
            height: 30,
            width: 30,
            color: Colors.purple,
            margin: EdgeInsets.fromLTRB(20, 44, 0, 0),
            child: new GestureDetector(
                    child: Image.asset("assets/images/hotels_activated.png"),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
          )
        ],
      ),
      // child: ,
    );
  }
}