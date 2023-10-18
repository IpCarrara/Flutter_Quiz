import 'package:flutter/material.dart';
import 'package:flutter_quiz/resposta_botao.dart';
import 'package:flutter_quiz/dados/perguntas.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaQuestoes extends StatefulWidget {
  const TelaQuestoes({super.key, required this.onRespostaSelecionada});

  final void Function(String resposta) onRespostaSelecionada;

  @override
  State<TelaQuestoes> createState() {
    return _QuestoesState();
  }
}

class _QuestoesState extends State<TelaQuestoes> {
  var indexRespostaAtual = 0;

  final Color corTextos = const Color.fromARGB(198, 100, 203, 248);

  void respodendoPergunta(String respostaSelecionada) {
    widget.onRespostaSelecionada(respostaSelecionada);
    setState(() {
      indexRespostaAtual++;
    });
  }

  @override
  Widget build(context) {
    final perguntaAtual = perguntas[indexRespostaAtual];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          perguntaAtual.texto,
          style: GoogleFonts.lato(
            fontSize: 28,
            color: corTextos,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        ...perguntaAtual.criandoRespostaMisturada().map(
          (item) {
            return Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: RespostaBotao(
                      respostaTexto: item,
                      aoClicar: () {
                        respodendoPergunta(item);
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
