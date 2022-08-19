import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWidgetApp());
}

class MusicWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.amberAccent,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              'نغمات',
            ),
          ),
          body: Column(
            children: [
              ElevatedButton(
                child: const Text("Play Music"),
                onPressed: () {
                  final player = AudioCache();
                  player.play('audios/music.mp3');

                  print("Hi Button");
                },
              ),
            ],
          ),
        ));
  }
}
