import 'package:flutter/material.dart';

import 'package:flutter_quiz/resultado_questoes/item_resumo.dart';

class ResumoQuestao extends StatelessWidget {
  const ResumoQuestao(this.resumoDados, {super.key});

  final List<Map<String, Object>> resumoDados;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: resumoDados.map(
            (data) {
              return ItemResumo(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
