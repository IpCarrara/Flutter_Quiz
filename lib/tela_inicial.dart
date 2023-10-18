import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial(this.iniciarQuiz, {super.key});

  final void Function() iniciarQuiz;

  final Color corTextos = const Color.fromARGB(198, 100, 203, 248);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          color: corTextos,
          height: 350,
          image: const AssetImage('assets/images/quiz-logo.png'),
        ),
        const SizedBox(height: 90),
        Text(
          'Aprenda Flutter Brincando!',
          style: TextStyle(
            color: corTextos,
            fontSize: 24,
            decoration: TextDecoration.none,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          onPressed: iniciarQuiz,
          icon: Icon(color: corTextos, size: 40, Icons.sports_esports_outlined),
          label: Text(
            'Iniciar',
            style: TextStyle(
              color: corTextos,
              fontSize: 24,
            ),
          ),
        )
      ],
    );
  }
}
