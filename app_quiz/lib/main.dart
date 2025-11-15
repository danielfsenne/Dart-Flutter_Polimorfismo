import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> marcadorDePontos = [];

  List<String> perguntas = [
    'O metrô é um dos meios de transporte mais seguros do mundo.',
    'A culinária brasileira é uma das melhores do mundo.',
    'Vacas podem voar, assim como peixes utilizam os pés para andar.'
  ];

  List<bool> respostas = [
    true,
    true,
    false
  ];

  int numeroDaQuestaoAtual = 0;

  // --- Função para verificar a resposta ---
  void verificarResposta(bool respostaUsuario) {
    bool respostaCorreta = respostas[numeroDaQuestaoAtual];

    setState(() {
      // Adiciona ícone verde ou vermelho
      if (respostaUsuario == respostaCorreta) {
        marcadorDePontos.add(
          Icon(Icons.check, color: Colors.green),
        );
      } else {
        marcadorDePontos.add(
          Icon(Icons.close, color: Colors.red),
        );
      }

      // Avança para a próxima pergunta ou reinicia
      if (numeroDaQuestaoAtual < perguntas.length - 1) {
        numeroDaQuestaoAtual++;
      } else {
        // Reinicia o quiz
        numeroDaQuestaoAtual = 0;
        marcadorDePontos.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Pergunta
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                perguntas[numeroDaQuestaoAtual],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
        ),

        // Botão Verdadeiro
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 20.0),
              ),
              child: Text('Verdadeiro'),
              onPressed: () => verificarResposta(true),
            ),
          ),
        ),

        // Botão Falso
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade800,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 20.0),
              ),
              child: Text('Falso'),
              onPressed: () => verificarResposta(false),
            ),
          ),
        ),

        // Linha de pontos (acertos e erros)
        Row(
          children: marcadorDePontos,
        ),
      ],
    );
  }
}
