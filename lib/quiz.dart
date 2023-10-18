import 'package:flutter/material.dart';
import 'package:flutter_quiz/tela_questoes.dart';
import 'package:flutter_quiz/tela_inicial.dart';
import 'package:flutter_quiz/dados/perguntas.dart';
import 'package:flutter_quiz/tela_resultado.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? telaAtiva;
  List<String> respostaSelecionada = [];

  @override
  void initState() {
    telaAtiva = TelaInicial(trocarTela);
    super.initState();
  }

  void respostaEscolhida(String resposta) {
    respostaSelecionada.add(resposta);

    if (respostaSelecionada.length == perguntas.length) {
      setState(() {
        telaAtiva = TelaResultado(
          respostasEscolhidas: respostaSelecionada,
          onRestart: restartQuiz,
        );
      });
    }
  }

  void trocarTela() {
    setState(
      () {
        telaAtiva = TelaQuestoes(
          onRespostaSelecionada: respostaEscolhida,
        );
      },
    );
  }

  void restartQuiz() {
    setState(() {
      respostaSelecionada = [];
      telaAtiva = TelaQuestoes(
        onRespostaSelecionada: respostaEscolhida,
      );
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Container(
        padding: const EdgeInsets.all(13),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 23, 8, 68),
              Color.fromARGB(255, 13, 95, 160),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: telaAtiva,
        ),
      ),
    );
  }
}
