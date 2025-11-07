import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  final player = AudioPlayer(); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () async {
                await player.play(AssetSource('nota1.wav'));
              },
              child: const Text('Clique em mim'),
            ),
          ),
        ),
      ),
    );
  }
}
