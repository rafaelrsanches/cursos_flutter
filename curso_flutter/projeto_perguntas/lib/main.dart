import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';
import './resposta.dart';

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
              Questao(perguntas[_perguntaSelecionada]),
              Resposta("Resposta 1"),
              Resposta("Resposta 2"),
              Resposta("Resposta 3"),
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
