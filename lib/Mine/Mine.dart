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

  Widget _getWidget(context, index){
    return null;
  }

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: new Image(
                  image: AssetImage('assets/iconFrame/icon_frame${index%6}.png'),
                ),
                height: 100,
                width: 100,
                color: Colors.white,
                
              ),
              new Text("indexpath--$index"),

              new Text(
                "indexpath--$index",
                style: new TextStyle(
                  height: 1,
                  fontSize: 12,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700
                ),
              )
            ],
          )
        ),
      )
    );
  }

  /// item 等宽等高，且内部container无法修改宽高
  Widget _createGridviewWidgetWithExtent(int count){
    return GridView.extent(
      maxCrossAxisExtent: 150,
      padding: EdgeInsets.all(4.0),
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 4.0,
      children: _createListContainer(count),
      childAspectRatio: 0.5,
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
        mainAxisSpacing: 4,
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

              new Text(
                "indexpath--$index",
                style: new TextStyle(
                  // height: 1,
                  // fontSize: 10,
                  // color: Colors.white,
                  // fontFamily: 'Roboto',
                  // fontWeight: FontWeight.w700
                )
              )
            ],
          ),
        )
      ),
    );
  }
  
  Widget _createGridviewWidgetWithBuilder(){
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),

      itemBuilder: (context, index) => this._getWidget(context, index)
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
    return _createGridviewWidgetWithExtent(30);
    // return _createGridviewWidgetWithCustom(30);
  }
}

