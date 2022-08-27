main() {
  List<Map<String, Object>> alunos = [
    {"nome": "Alfredo", "nota": 9.9},
    {"nome": "Nilson", "nota": 9.3},
    {"nome": "Mariana", "nota": 8.7},
    {"nome": "Guilherme", "nota": 8.1},
    {"nome": "Ana", "nota": 7.6},
    {"nome": "Carlos", "nota": 6.8},
  ];

  // Função que recebe a List de Map alunos, e retorna uma List com apenas as notas.
  double Function(Map) pegarNotas = (aluno) => aluno["nota"];

  // Usando a função .map e passando como parâmetro a função acima (pegarNotas).
  var notas = alunos.map(pegarNotas);

  print(notas);

  // Função para utilizar com o .reduce
  double somarNotas(double acumulador, double elemento) {
    return (acumulador + elemento);
  }

  // Usando a função .reduce e passando como parâmetro a função acima (somarNotas).
  double resultado = notas.reduce(somarNotas);

  print(resultado);
  print("O valor da média é ${resultado / notas.length}");

  // Uma forma de implementação mais implicita:
  var notasFinais = alunos
      .map((aluno) => aluno["nota"])
      .map((nota) => (nota as double))
      .reduce((a, e) => a + e);

  print("O valor da média é: ${notasFinais / alunos.length}");
}
