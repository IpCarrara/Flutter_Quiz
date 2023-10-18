import 'package:flutter/material.dart';

class IdentificadorQuestao extends StatelessWidget {
  const IdentificadorQuestao({
    super.key,
    required this.ehRespostaCorreta,
    required this.indexQuestao,
  });

  final int indexQuestao;
  final bool ehRespostaCorreta;

  @override
  Widget build(BuildContext context) {
    final numeroQuestao = indexQuestao + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ehRespostaCorreta
            ? const Color.fromARGB(255, 28, 242, 0)
            : const Color.fromARGB(255, 255, 3, 3),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        numeroQuestao.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
          fontSize: 22,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
