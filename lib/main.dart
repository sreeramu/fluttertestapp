import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';

//import 'package:leveldb/leveldb.dart';
void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),
      home: new StatelessWidgetExample('Hello'),
    ),
  );
}

class StatelessWidgetExample extends StatelessWidget {
  final String _appBarTitle;

  StatelessWidgetExample(this._appBarTitle) : super();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_appBarTitle),
      ),
      body:
      new GridView.extent(
          maxCrossAxisExtent: 150.0,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          padding: const EdgeInsets.all(2.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new RaisedButton(key: null, onPressed: buttonPressed,
                color: const Color(0xFF0099ed),
                child:
                new Text(
                    "BUTTON 1",
                    style: new TextStyle(fontSize: 12.0,
                        color: const Color(0xFFffffff),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto")
                )
            ),

            new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    'images/name.jpg',
                    width: 100.0,
                    height: 100.0,
                  )
                ]
            )
          ]
      ),
    );
  }

  void buttonPressed() {
//    Dialog dialog=new Dialog();
  }

}
