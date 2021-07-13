import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundno){
    final player = AudioCache();
    player.play('note$soundno.wav');
  }
  Expanded buildkey({Color color, int soundno}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundno);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.redAccent, soundno : 1),
              buildkey(color: Colors.orangeAccent, soundno : 2),
              buildkey(color: Colors.yellowAccent, soundno : 3),
              buildkey(color: Colors.greenAccent, soundno : 4),
              buildkey(color: Colors.lightBlueAccent, soundno : 5),
              buildkey(color: Colors.indigoAccent, soundno : 6),
              buildkey(color: Colors.purpleAccent, soundno : 7),
            ],
          ),
        ),
      ),
    );
  }
}
