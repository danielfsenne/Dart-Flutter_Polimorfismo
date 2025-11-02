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
        backgroundColor: const Color.fromARGB(255, 238, 145, 6),
        body: 
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('imagens/calango.jpg'),
                radius: 50.0,
              ),
              Text(
                'Daniel Senne',
                 style: TextStyle(
                 fontSize: 40.0,
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Pacifico'
                 ),
                ),
                Text(
                  'Desenvolvedor Flutter',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.deepPurple[100],
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                SizedBox(
                  height: 20.0, 
                  width: 250.0,
                  child: Divider(
                  color: Colors.white,
                 ),
                ),
                Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0, 
                  horizontal: 25.0
                ),
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Row(
                  children:[
                  Icon(
                    Icons.phone,
                    size: 25.0,
                    color: Colors.deepOrangeAccent,
                    ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '+55 16 994432 9908',
                      style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    ),
                    ),
                  ],
                  ),
                  ),
                ),
                Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0, 
                  horizontal: 25.0
                ),
                child: Row(
                  children:[
                  Icon(
                    Icons.email,
                    size: 25.0,
                    color: Colors.deepOrangeAccent,
                    ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'tralalelotralala@gmail.com',
                      style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    ),
                    ),
                  ],),
                )
             ],
          ),
       ),
      ),
    );
  }
}
 