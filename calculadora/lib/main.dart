import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {

  String mensagemVisor = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text('Calculadora'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              margin: EdgeInsets.all(15),
              width: 400,
              height: 120,
              child: Text(
                mensagemVisor,
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.all(15),
              child: Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'limpar tela';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  'C',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'deletar';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  'DEL',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'porcentagem';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '%',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'dividir';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '÷',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'número 7';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '7',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'número 8';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '8',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'número 9';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '9',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'multiplicar';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '*',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'número 4';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'número 5';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'número 6';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'dividir';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'número 1';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'número 2';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'número 3';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'subtrair';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'número 0';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'decimais';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '.',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  mensagemVisor = 'resultado';
                                  setState(() {
                                    mensagemVisor;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black12, // Cor de fundo
                                  foregroundColor: Colors.blue, // Cor do texto
                                ),
                                child: Text(
                                  '=',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}