import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class perguntaAppState extends State<PerguntaApp> {
  int perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
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
              Text(perguntas[perguntaSelecionada]),
              ElevatedButton(
                child: Text("Resposta 1"),
                onPressed: responder,
              ),
              ElevatedButton(
                child: Text("Resposta 2"),
                onPressed: responder,
              ),
              ElevatedButton(
                child: Text("Resposta 3"),
                onPressed: responder,
              )
            ],
          ),
        ),
      );
}

class PerguntaApp extends StatefulWidget {
  @override
  perguntaAppState createState() {
    return perguntaAppState();
  }
}
