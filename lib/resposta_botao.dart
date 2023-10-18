import 'package:flutter/material.dart';

class RespostaBotao extends StatelessWidget {
  const RespostaBotao({
    super.key,
    required this.respostaTexto,
    required this.aoClicar,
  });

  final String respostaTexto;
  final void Function() aoClicar;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: aoClicar,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 23, 8, 68),
        foregroundColor: const Color.fromARGB(198, 100, 203, 248),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        textStyle: const TextStyle(fontSize: 21),
      ),
      child: Text(respostaTexto, textAlign: TextAlign.center),
    );
  }
}
