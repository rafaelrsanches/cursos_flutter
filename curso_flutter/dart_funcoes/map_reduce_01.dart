main() {
  List<Map<String, Object>> alunos = [
    {"nome": "Alfredo", "nota": 9.9},
    {"nome": "Nilson", "nota": 9.3},
    {"nome": "Mariana", "nota": 8.7},
    {"nome": "Guilherme", "nota": 8.1},
    {"nome": "Ana", "nota": 7.6},
    {"nome": "Carlos", "nota": 6.8},
  ];

  String Function(Map) pegarApenasONome = (aluno) => aluno["nome"];
  int Function(String) qtedDeLetras = (texto) => texto.length;
  int Function(int) dobroLetras = (letras) => (letras * 2);

  var nomes = alunos.map(pegarApenasONome);
  var quantasLetras = nomes.map(qtedDeLetras);

  print(nomes);
  print(quantasLetras);
}
