main() {
  List<double> notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10];
  double total = notas.reduce(somar);

  List<String> nomes = ["Ana", "Bia", "Carlos", "Daniel", "Maria", "Pedro"];
  String resultado = nomes.reduce(juntar);

  print(total);
  print(resultado);
}

double somar(double acumulador, double elemento) {
  print("$acumulador $elemento");
  return (acumulador + elemento);
}

String juntar(String acumulador, String elemento) {
  return "$acumulador, $elemento";
}
