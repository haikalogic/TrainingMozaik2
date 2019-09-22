import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home: halaman(),
  ));
}
class halaman extends StatefulWidget {
  @override
  _halamanState createState() => _halamanState();
}

class _halamanState extends State<halaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: new ListView(
        children: <Widget>[
          new ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: new Icon(Icons.speaker, size: 56.0,),
            title: new Text("Speaker"),
          ),
          new ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: new Icon(Icons.headset, size: 56.0,),
            title: new Text("Headset"),
          ),
          new ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: new Icon(Icons.smartphone, size: 56.0,),
            title: new Text("HP"),
          ),
          new ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: new Icon(Icons.local_gas_station, size: 56.0,),
            title: new Text("Charge"),
          )
        ],
      ),
    );
  }
}