import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  makeKey(colors, sound) {
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          final player = new AudioCache();
          player.play(sound);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                makeKey(Colors.amber, 'note1.wav'),
                makeKey(Colors.blueAccent, 'note2.wav'),
                makeKey(Colors.yellowAccent, 'note3.wav'),
                makeKey(Colors.black12, 'note4.wav'),
                makeKey(Colors.purple, 'note5.wav'),
                makeKey(Colors.redAccent, 'note6.wav'),
                makeKey(Colors.tealAccent, 'note7.wav'),
              ],
            ),
        ),
      ),
    );
  }
}
