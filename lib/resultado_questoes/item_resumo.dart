import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_quiz/resultado_questoes/identificador_questao.dart';

class ItemResumo extends StatelessWidget {
  const ItemResumo(this.itemData, {super.key});

  final Map<String, Object> itemData;
  final Color corTextos = const Color.fromARGB(198, 100, 203, 248);

  @override
  Widget build(BuildContext context) {
    final ehRespostaCorreta =
        itemData['resposta_do_usuario'] == itemData['resposta_correta'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IdentificadorQuestao(
            ehRespostaCorreta: ehRespostaCorreta,
            indexQuestao: itemData['index_questao'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['questao'] as String,
                  style: GoogleFonts.lato(
                    color: corTextos,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData['resposta_do_usuario'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 202, 171, 252),
                    fontSize: 16,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  itemData['resposta_correta'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 2, 228, 40),
                    fontSize: 16,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
