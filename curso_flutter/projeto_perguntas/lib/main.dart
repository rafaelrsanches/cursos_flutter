import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';
import './resposta.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _perguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
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

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return (_perguntaSelecionada < _perguntas.length);
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()["respostas"]
        : [];
    List<Widget> widgetsRespostas =
        respostas.map((texto) => Resposta(texto, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
          centerTitle: true,
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]["texto"].toString()),
                  ...widgetsRespostas,
                ],
              )
            : Resultado(),
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
