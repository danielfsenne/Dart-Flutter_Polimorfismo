import 'package:flutter/material.dart';

void main() {
  runApp(
      MeuApp(),
  );
}
class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 21, 6),
        body: 
        SafeArea(
          child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
        Container(
          height: 100.0,
          // width: 100.0,
          color: Colors.white,
          child: Text('Container 1'),
        ),
        SizedBox(
            height: 20.0,
          ),
        Container(
            // width: 100.0,
            height: 100.0,
            color: Colors.amber,
            child: Text('Conatiner 2'),
       ),
        Container(
            // width: 100.0,
            height: 100.0,
            color: Colors.purple,
            child: Text('Conatiner 3'),
          )
        ],)
      ),
      )
    );
  }
}
 