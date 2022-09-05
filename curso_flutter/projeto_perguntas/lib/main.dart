import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _perguntaAppState extends State<PerguntaApp> {
  @override
  Widget build(BuildContext context) {
    int _perguntaSelecionada = 0;

    void _responder() {
      setState(() {
        _perguntaSelecionada++;
      });
    }

    final List<Map<String, Object>> perguntas = [
      {
        "texto": "Qual é a sua cor favorita?",
        "respostas": ["Preto", "Vermelho", "Verde", "Branco"],
      },
      {
        "texto": "Qual é o seu animal favorito?",
        "respostas": ["Coelho", "Cobra", "Elefante", "Leão"],
      },
      {
        "texto": "Qual o seu instrutor favorito?",
        "respostas": ["Maria", "João", "Leonardo", "Jacob"],
      }
    ];

    List<Widget> respostas = [];

    for (String textoResp
        in perguntas[_perguntaSelecionada].cast()["respostas"]) {
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]["texto"].toString()),
            ...respostas,
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _perguntaAppState createState() {
    return _perguntaAppState();
  }
}
