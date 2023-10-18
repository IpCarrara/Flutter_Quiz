class ModeloQuestoes {
  ModeloQuestoes(this.texto, this.resposta);

  final String texto;
  final List<String> resposta;

  List<String> criandoRespostaMisturada() {
    final listaMisturada = List.of(resposta);
    listaMisturada.shuffle();
    return listaMisturada;
  }
}
