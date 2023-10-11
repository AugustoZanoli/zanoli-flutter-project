import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeiro aplicativo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Contador de toques'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //Apertar e contar cliques
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        color: Colors.white10, // Defina a cor de fundo desejada
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Já apertou o botão:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                '$_counter vezes',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Apertar'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter = 0;
                  });
                },
                child: Text('Resetar'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
