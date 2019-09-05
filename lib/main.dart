import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sencondfluuter/Cart/Cart.dart';
import 'package:sencondfluuter/Category/Category.dart';
import 'package:sencondfluuter/Home/HomePage.dart';
import 'package:sencondfluuter/Mine/Mine.dart';
import 'package:sencondfluuter/TabBar/TabBarItem.dart';
import 'package:sencondfluuter/Tools/ColorTool.dart';
import 'package:flutter/foundation.dart';
import 'package:sencondfluuter/Tools/FrameMath.dart';
void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/home': (context) => new HomePage(),
      },
    );
  }
  
}

class MyHomePage extends StatefulWidget {
  
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
 
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  List<Widget> childPages = [];
  // 当前选中tabbar下标
  int _currentSelectedIndex = 0;
  List<String> _titles = ['首页', '探索', '订单', '我的'];
  List<String> _normalImgs = ['assets/iconFrame/icon_frame0.png', 
                              'assets/iconFrame/icon_frame1.png',
                              'assets/iconFrame/icon_frame2.png', 
                              'assets/iconFrame/icon_frame3.png'];
  List<String> _selectedImgs = ['assets/iconFrame/icon_frame3.png', 
                                'assets/iconFrame/icon_frame2.png',
                                'assets/iconFrame/icon_frame1.png', 
                                'assets/iconFrame/icon_frame0.png'];
  TabController _controller;

  var _counter = 0;
  var _index = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _selectIndex(int index){
    setState(() {
      _index = index;
    });
  }

  // tabbar allchildPage
  List<Widget> _initAllChildPages() {
    var homePage = new HomePage();
    var categoryPage = new CategoryPage();
    var cartPage = new CartPage();
    var minePage = new MinePage();

    return [homePage, categoryPage, cartPage, minePage];
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      initialIndex: 0, 
      length: _titles.length,
      vsync: this
    );

    _controller.addListener((){
      setState(() {
        print("$_currentSelectedIndex");
        
        // _index = _controller.index;
        // _currentSelectedIndex = _controller.index;
        // _titles = ['订单', '我的', '首页', '探索'];
      });
    });

    setState(() {
      childPages = _initAllChildPages();
    });
  }

  /// 初始化所有tabbarItem
  List<Widget> _initItems(){
    List<Widget> items = [];
    for (var i = 0; i < this._titles.length; i++) {
      var item = TabBarItem(
          _currentSelectedIndex, 
          i, 
          _titles[i], 
          _normalImgs[i], 
          _selectedImgs[i], 
          ColorTool.hexColor('#323232'), 
          Colors.red
        );
      items.add(item);
    }
    return items;
  }
  
  /// 初始化tabBar
  Widget _createTabView() =>TabBar(
    tabs: _initItems(),
    controller: _controller,
    indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
    labelColor: Colors.orange[300],
    unselectedLabelColor: Colors.red[300],
  );
  
  @override
  Widget build(BuildContext context) {
    ScreenManager.instance..init(context);
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
      //     BottomNavigationBarItem(icon: Icon(Icons.location_searching), title: Text('探索')),
      //     BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text('订单')),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的'))
      //   ],
      //   currentIndex: _index,
      //   fixedColor: Colors.black,
      //   onTap: _selectIndex,
      //   unselectedItemColor: Colors.red,
      //   type: BottomNavigationBarType.fixed,
      //   selectedFontSize: 12,
      //   unselectedFontSize: 12,
      // ),
      
      bottomNavigationBar: new Container(
        height: (49+ScreenManager.bottomBarHeightDp),
        child: TabBar(
          onTap: (index){
            setState(() {
              _index = index;
              _currentSelectedIndex =index;
            });
          },
          tabs: [
            TabBarItem(
              _currentSelectedIndex, 
              0, 
              _titles[0], 
              _normalImgs[0], 
              _selectedImgs[0], 
              ColorTool.hexColor('#323232'), 
              Colors.red
            ),

            TabBarItem(
              _currentSelectedIndex, 
              1, 
              _titles[1], 
              _normalImgs[1], 
              _selectedImgs[1], 
              ColorTool.hexColor('#323232'), 
              Colors.red
            ),

            TabBarItem(
              _currentSelectedIndex, 
              2, 
              _titles[2], 
              _normalImgs[2], 
              _selectedImgs[2], 
              ColorTool.hexColor('#323232'), 
              Colors.red
            ),

            TabBarItem(
              _currentSelectedIndex, 
              3, 
              _titles[3], 
              _normalImgs[3], 
              _selectedImgs[3], 
              ColorTool.hexColor('#323232'), 
              Colors.red
            ),
          ],
          controller: _controller,
          indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
          labelColor: Colors.orange[300],
          unselectedLabelColor: Colors.red[300],
        ),
      ),
      
      body: this.childPages[_index],
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void dispose() {
    super.dispose();
    this._controller = null;
    
  }
}

