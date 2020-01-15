import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    try {
      player.play('note$soundNumber.wav');
    } catch (e) {
      print('some errore Accure');
    }
  }

  Expanded buildKey({Color colorname, int soundNumbre}) {
    return Expanded(
      child: FlatButton(
        color: colorname,
        onPressed: () {
          playSound(soundNumbre);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(colorname: Colors.red, soundNumbre: 1),
                buildKey(colorname: Colors.orange, soundNumbre: 2),
                buildKey(colorname: Colors.yellow, soundNumbre: 3),
                buildKey(colorname: Colors.green, soundNumbre: 4),
                buildKey(colorname: Colors.teal, soundNumbre: 5),
                buildKey(colorname: Colors.blue, soundNumbre: 6),
                buildKey(colorname: Colors.purple, soundNumbre: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
