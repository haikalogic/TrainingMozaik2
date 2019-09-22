import 'package:flutter/material.dart';
import './halaman.dart';
import './halaman2.dart';
import './halaman3.dart';

void main() {
  runApp(new MaterialApp(
    home: new BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  void _alertdialog(String str){
  if (str.isEmpty) return;
  AlertDialog alertDialog = new AlertDialog(
    content: new Text(
      str,
      style: new TextStyle(fontSize: 20.0)
    ),
    actions: <Widget>[
      Row(
        children: <Widget>[
          new RaisedButton(
            color: Colors.pink,
            child: new Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ],
  );
  showDialog(context: context, child: alertDialog);
}
  int _index = 0;
  var staticAppBar;
  final _widgetOption = [
    halaman(),
    halaman2(),
    halaman3(),
  ];

  void incrementTab(index) {
    setState(() {
      _index = index;

      if (_index == 0){
        staticAppBar = Text("Home");
      }
      if  (_index == 1) {
        staticAppBar = Text ("Cart");
      }
      if (_index == 2){
        staticAppBar = Text("Profil");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: staticAppBar,
        leading: Icon(Icons.search),
      ),
      drawer: Drawer(

      ),
      body: _widgetOption.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          backgroundColor: Colors.deepOrange,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
                BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text("Cart"),
                activeIcon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )),
                BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text("Profile"),
                activeIcon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ))
          ],
          onTap: (index){
            incrementTab(index);
          },
          ),
    );
  }
}
