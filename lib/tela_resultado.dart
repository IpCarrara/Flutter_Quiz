import 'package:flutter/material.dart';
import 'package:flutter_quiz/dados/perguntas.dart';
import 'package:flutter_quiz/resultado_questoes/resumo_questao.dart';

class TelaResultado extends StatelessWidget {
  const TelaResultado(
      {super.key, required this.respostasEscolhidas, required this.onRestart});

  final List<String> respostasEscolhidas;
  final void Function() onRestart;

  final Color corTextos = const Color.fromARGB(198, 100, 203, 248);

  List<Map<String, Object>> pegarResumoRespostas() {
    final List<Map<String, Object>> resumo = [];

    for (var i = 0; i < respostasEscolhidas.length; i++) {
      resumo.add(
        {
          'index_questao': i,
          'questao': perguntas[i].texto,
          'resposta_correta': perguntas[i].resposta[0],
          'resposta_do_usuario': respostasEscolhidas[i],
        },
      );
    }

    return resumo;
  }

  @override
  Widget build(context) {
    final resumoDados = pegarResumoRespostas();
    final numTotalQuestoes = perguntas.length;
    final numRespostasCorretas = resumoDados.where((data) {
      return data['resposta_do_usuario'] == data['resposta_correta'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Voce respondeu $numRespostasCorretas de $numTotalQuestoes questoes corretamente',
              style: TextStyle(
                color: corTextos,
                fontSize: 24,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ResumoQuestao(resumoDados),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              icon: const Icon(Icons.refresh),
              label: const Text(
                'Tentar Novamente',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
