import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  const Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
 
  int numeroDadoEsquerda = 1;
  int numeroDadoDireita = 1;

  void alterarFaceDosDadoos(){
   setState(() {
     numeroDadoEsquerda = Random().nextInt(6) + 1;
     numeroDadoDireita = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children:[
      Expanded(
        child:TextButton(
          onPressed: (){
            alterarFaceDosDadoos();
          },
        child: Image.asset('imagens/dado$numeroDadoEsquerda.png'),
        ),
       ),
      Expanded(
        child:TextButton(
          onPressed: () {
            alterarFaceDosDadoos();          
          },
        child: Image.asset('imagens/dado$numeroDadoDireita.png'),
        ),
       ),
       ],
      ),
    );
  }
}


