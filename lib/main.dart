import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Me pergunte qualquer coisa!'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Bola(),
      ),
    );
  }
}

class Bola extends StatefulWidget {
  @override
  _BolaState createState() => _BolaState();
}

class _BolaState extends State<Bola> {
  String localizacaoBolas = 'images/';
  String nomeArquivo = 'bola';
  int numeroArquivo = 1;
  String extensaoArquivo = '.png';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            numeroArquivo = Random().nextInt(6) + 1;
          });
        },
        child: Image.asset(
          '$localizacaoBolas$nomeArquivo$numeroArquivo$extensaoArquivo',
          height: 500,
          width: 500,
        ),
      ),
    );
  }
}
