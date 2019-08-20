import 'package:flutter/material.dart';
import 'package:sencondfluuter/Tools/ColorTool.dart';

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
      
      body: _GridViewWidget(),
    );
  }
}

/// GridView
class _GridViewWidget extends StatelessWidget{
  _GridViewWidget({Key key}) : super(key: key);


  List<Container> _createListContainer(int count){
    return new List<Container>.generate(
      count, 
      (int index) => new Container(
        
        color: Colors.orange,
        child: new Container(
          constraints: BoxConstraints.tight(
            Size(50, 50)
          ),
          color: ColorTool.hexColor('#333333'),
          child: new Column(
            children: <Widget>[
              new Image(
                  image: AssetImage('assets/iconFrame/icon_frame${index%6}.png'),
              ),

              new Text("indexpath--$index"),

              new Text("indexpath--$index")
            ],
          )
        ),
      )
    );
  }

  /// item 等宽等高，且内部container无法修改宽高
  Widget _createGridviewWidgetWithExtent(int count){
    return GridView.extent(
      maxCrossAxisExtent: 100,
      padding: EdgeInsets.all(4.0),
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 4.0,
      children: _createListContainer(count),
    );
  }
  
  Widget _createGridviewWidgetWithCount(int count){
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(4.0),
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 4.0,
      children: _createListContainer(count),
    );
  }

  Widget _createGridviewWidgetWithCustom(int count){
    return GridView.custom(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4
      ),
      
      // childrenDelegate: SliverChildListDelegate(
      //   _createListContainer(count)
      // ),

      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) => new Container(
          color: ColorTool.hexColor('#323232'),
          child: new Column(
            children: <Widget>[
              new Image(
                  image: AssetImage('assets/iconFrame/icon_frame${index%6}.png'),
              ),

              new Text("indexpath--$index"),

              new Text("indexpath--$index")
            ],
          ),
        )
      ),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    // return new Container(
    //   height: 300,
    //   width: 300,
    //   child: _createGridviewWidget(30),
    // );

    // return _createGridviewWidgetWithCount(30);

    return _createGridviewWidgetWithCustom(30);
  }
}

