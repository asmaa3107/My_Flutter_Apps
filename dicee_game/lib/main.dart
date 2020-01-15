import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
         title: Text('lets GOooooOO'),
         backgroundColor: Colors.red,
        ),
         body: SafeArea(
          child: DicePage(),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceevalue =1;
  int rightdiceevalue =1; 

  void getRandoDiceNumer(){
      setState(() {
                   //setstate to update current widegt values state
                     rightdiceevalue = Random().nextInt(6)+1;
                     leftdiceevalue = Random().nextInt(6)+1;
                 });
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton
            (
              onPressed: (){
             getRandoDiceNumer();
              },
              child: Image.asset('images/dice$leftdiceevalue.png'),
            ),
          ),
          Expanded(
            child:FlatButton(
               onPressed: (){
                  getRandoDiceNumer(); 
              }, 
               child: Image.asset('images/dice$rightdiceevalue.png'),
              ),
          ),
        ],
      ),
    );
  }
}  

//dicee game