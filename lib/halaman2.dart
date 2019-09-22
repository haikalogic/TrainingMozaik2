import 'package:flutter/material.dart';
import './iklan1.dart';
import './iklan2.dart';

void main() {
  runApp(new MaterialApp(
    home: halaman2(),
  ));
}

class halaman2 extends StatefulWidget {
  @override
  _halaman2State createState() => _halaman2State();
}

class _halaman2State extends State<halaman2>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      padding: EdgeInsets.all(20),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              Icon(
                Icons.attach_money,
                size: 24,
              ),
              Text("Saldo Anda")
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Rp. 100.000.000"),
              Icon(
                Icons.add_circle,
                size: 24,
              ),
            ],
          ),
          Image.network(
            'https://www.petanikode.com/img/flutter/flutter.png',
          ),
          Expanded(
            flex: 9,
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: new Container(
                      child: TabBar(
                        controller: _tabController,
                        labelColor: Colors.blue,
                        tabs: <Widget>[
                          Tab(
                            text: "iklan Aktif",
                          ),
                          Tab(
                            text: "Iklan on-bid",
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      child: new TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          iklan1(),
                          iklan2(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          new Row(
            children: <Widget>[
              Text("Sortir Berdasarkan")
            ],
          )
        ],
      ),
    ));
  }
  // TabBar _buildTabBar (){
  //   return
  // }
}
