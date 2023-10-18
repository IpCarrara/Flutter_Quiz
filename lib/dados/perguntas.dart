import 'package:flutter_quiz/modelo/modelo_questoes.dart';

final perguntas = [
  ModeloQuestoes(
    'Quais são os principais blocos de construção das interfaces do Flutter?',
    [
      'Widgets',
      'Componentes',
      'Blocos',
      'Funções',
    ],
  ),
  ModeloQuestoes(
    'Como são construídas as interfaces do Flutter?',
    [
      'Combinando widgets no código',
      'Combinando widgets em um editor visual',
      'Definindo widgets em arquivos de configuração',
      'Usando o XCode para iOS e o Android Studio para Android',
    ],
  ),
  ModeloQuestoes(
    'Qual é o propósito de um StatefulWidget?',
    [
      'Atualizar a interface quando os dados mudam',
      'Atualizar os dados quando a interface muda',
      'Ignorar mudanças nos dados',
      'Renderizar uma interface que não depende de dados',
    ],
  ),
  ModeloQuestoes(
    'Qual widget você deve tentar usar com mais frequência: StatelessWidget ou StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Ambos são igualmente bons',
      'Nenhum dos acima',
    ],
  ),
  ModeloQuestoes(
    'O que acontece se você alterar dados em um StatelessWidget?',
    [
      'A interface não é atualizada',
      'A interface é atualizada',
      'O StatefulWidget mais próximo é atualizado',
      'Quaisquer StatefulWidgets aninhados são atualizados',
    ],
  ),
  ModeloQuestoes(
    'Como você deve atualizar dados dentro de StatefulWidgets?',
    [
      'Chamando setState()',
      'Chamando updateData()',
      'Chamando updateUI()',
      'Chamando updateState()',
    ],
  ),
];
