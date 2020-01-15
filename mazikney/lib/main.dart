import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyMazika());

class MyMazika extends StatefulWidget {
  MyMazika({Key key}) : super(key: key);

  @override
  _MyMazikaState createState() => _MyMazikaState();
}

class _MyMazikaState extends State<MyMazika> {
// Duration _duration =Duration();
// Duration _position =Duration();
  AudioCache _localAudioFile;
  AudioPlayer _localAudioPlayer;
   double _sliderValue = 0.0;
  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    _localAudioPlayer = new AudioPlayer();
    _localAudioFile = new AudioCache(fixedPlayer: _localAudioPlayer);
  _localAudioPlayer.getDuration();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(title:Text('play music',),backgroundColor: Colors.orange,),
        backgroundColor: Colors.white,
        body: SafeArea(
          
          child: Container(
             height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    color: Colors.black,
                    height: 100.0,
                    child: Slider(
                      
                      activeColor: Colors.orangeAccent,
                      inactiveColor: Colors.orange,
                      //value: _position.inSeconds.toDouble(),
                      // max: _duration.inSeconds.toDouble(),
                      min: 0.0,
                      value: _sliderValue,
                      max:100.0,
                      onChanged: (double newval) {

                         print('slider  Changed !');
                         setState(()
                         { 
                           _sliderValue = newval;
                            print(' value Changed !');
                         });//setstate
                       
                       },//onChanged
                    ),
                  ),

                Row(
                    children: <Widget>[   
                    FlatButton(
                      textColor: Colors.white,
                      color: Colors.teal,
                      onPressed: () {
                        _localAudioFile.play('mysong.mp3');
                        print('play was clicked !!');
                      },
                      child: Text('Play'),
                    ),
                    FlatButton(
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        _localAudioPlayer.pause();
                      },
                      child: Text('Pouse'),
                    ),
                    FlatButton(
                      textColor: Colors.white,
 
                      color: Colors.red,
                      onPressed: () {
                        _localAudioPlayer.stop();
                      },
                      child: Text('Stop'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//  newval=_position.inSeconds.toDouble();

//                            _localAudioPlayer.onDurationChanged.listen((Duration d) {
//                             print('Max duration: $d');
//                                  setState(() => _duration = d);
//                             print(' Duration : $_duration');

//                             });
//                             _localAudioPlayer.onAudioPositionChanged.listen((Duration p) {
//                             print('Max duration: $p');
//                                  setState(() => newval = p.inSeconds.toDouble());
//                             print(' Position : $newval');

//                             });
//                             print(' value Changed !');
                            