import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Dice app'),
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
  int _counterSingle = 1;
  int _counterSecond = 1;

  void _switchImage() {
    setState(() {
      _counterSingle=Random().nextInt(6)+1;
    });
  }

  void _switchSecondImage() {
    setState(() {
      _counterSecond=Random().nextInt(6)+1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.green[400],
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(child: FlatButton(child: Image(image: AssetImage('images/dice$_counterSingle.png')), onPressed: _switchImage,),
              ),
              Expanded(child: FlatButton(child: Image.asset('images/dice$_counterSecond.png'), onPressed: _switchSecondImage )),
            ],
          ),
        ),
      ),
    );
  }
}
