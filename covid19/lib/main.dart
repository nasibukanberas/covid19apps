import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BaseApp(),
      routes: <String, WidgetBuilder> {
        '/COVID1': (context) => COVID1(),
        '/COVID2': (context) => COVID2()
      }
      );
    }
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("COVID-19"),),
        body: Center(
          child: Column(
            children: <Widget>[
              IconButton(
                  icon: new Icon(Icons.favorite, color: Colors.redAccent),
                  iconSize: 70.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/COVID1');
                  }
              ),
              new Text("What is COVID-19"),
              SizedBox(
                height: 50,
              ),
              IconButton(
                  icon: new Icon(Icons.map, color: Colors.green),
                  iconSize: 70.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/COVID2');
                  }
              ),
              new Text("How is it spread"),
            ],),),
        );
  }
}

class COVID1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("What is COVID-19?"),),
    );
  }
}

class COVID2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("How is it spread?"),),
    );
  }
}