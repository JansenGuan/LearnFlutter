import 'package:flutter/material.dart';
import 'package:sencondfluuter/Cart/Cart.dart';
import 'package:sencondfluuter/Category/Category.dart';
import 'package:sencondfluuter/Home/HomePage.dart';
import 'package:sencondfluuter/Mine/Mine.dart';

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

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> childPages = [];
  
  int _counter = 0;
  int _index = 0;
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

    setState(() {
      childPages = _initAllChildPages();
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('探索')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('订单')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('我的'))
        ],
        currentIndex: _index,
        fixedColor: Colors.black,
        onTap: _selectIndex,
        unselectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
      
      body: this.childPages[_index],
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}





/*
      Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Text(
              
              'You have pushed the button this many times:',
              style: new TextStyle(
                fontSize: 15,
                color: Colors.red
              ),
            ),
            
            Text(
              
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            
          ],
        ),
      )
      */