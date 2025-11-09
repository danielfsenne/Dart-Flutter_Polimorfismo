import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MarimbaApp());

class MarimbaApp extends StatelessWidget {
  const MarimbaApp({super.key});

  Future<void> tocarSom(int numeroDoSom) async {
    final player = AudioPlayer();
    await player.play(AssetSource('nota$numeroDoSom.wav'));
  }

  Expanded criarBotao({required Color cor, required int numeroDaNota}) {
    return Expanded(
      child: TextButton(
        onPressed: () => tocarSom(numeroDaNota),
        style: TextButton.styleFrom(backgroundColor: cor),
        child: const SizedBox.shrink(), 
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
            children: [
              criarBotao(cor: Colors.amber, numeroDaNota: 1),
              criarBotao(cor: Colors.orange, numeroDaNota: 2),
              criarBotao(cor: Colors.red, numeroDaNota: 3),
              criarBotao(cor: Colors.lime, numeroDaNota: 4),
              criarBotao(cor: Colors.blue, numeroDaNota: 5),
              criarBotao(cor: Colors.lightGreen, numeroDaNota: 6),
              criarBotao(cor: Colors.purple, numeroDaNota: 7),
            ],
          ),
        ),
      ),
    );
  }
}
