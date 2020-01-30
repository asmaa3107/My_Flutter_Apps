import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor:Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            // flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(),
                ),
                Expanded(
                  child: ReuseableCard(),
                ),
              ],
            ),
          ),
          Expanded(
            // flex: 2,
            child: ReuseableCard(),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(),
                ),
                Expanded(
                  child: ReuseableCard(),
                ),
              ],
            ),
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Theme.of(context).accentColor,
      //   child: Icon(
      //     Icons.add,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  const ReuseableCard({
    Key key,
  }) : super(key: key);
// note! using key to trace widget
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Color(0xFF1D1F33), borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
