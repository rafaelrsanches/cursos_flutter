import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _perguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  final List<String> perguntas = [
    "Qual é a sua cor favorita?",
    "Qual é o seu animal favorito?"
  ];

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Text(perguntas[_perguntaSelecionada]),
              ElevatedButton(
                child: Text("Resposta 1"),
                onPressed: _responder,
              ),
              ElevatedButton(
                child: Text("Resposta 2"),
                onPressed: _responder,
              ),
              ElevatedButton(
                child: Text("Resposta 3"),
                onPressed: _responder,
              )
            ],
          ),
        ),
      );
}

class PerguntaApp extends StatefulWidget {
  @override
  _perguntaAppState createState() {
    return _perguntaAppState();
  }
}
