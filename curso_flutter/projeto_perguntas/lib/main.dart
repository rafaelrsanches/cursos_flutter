import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _perguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      "texto": "Qual é a sua cor favorita?",
      "respostas": [
        {"texto": "Preto", "nota": 10},
        {"texto": "Vermelho", "nota": 5},
        {"texto": "Verde", "nota": 3},
        {"texto": "Branco", "nota": 1},
      ],
    },
    {
      "texto": "Qual é o seu animal favorito?",
      "respostas": [
        {"texto": "Coelho", "nota": 10},
        {"texto": "Cobra", "nota": 5},
        {"texto": "Elefante", "nota": 3},
        {"texto": "Leão", "nota": 1},
      ],
    },
    {
      "texto": "Qual o seu instrutor favorito?",
      "respostas": [
        {"texto": "Maria", "nota": 5},
        {"texto": "João", "nota": 3},
        {"texto": "Leonardo", "nota": 10},
        {"texto": "Jacob", "nota": 10},
      ],
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
          centerTitle: true,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder)
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
