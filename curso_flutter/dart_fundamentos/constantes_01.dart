import 'dart:io';

main() {
  // Área da circunferência = PI * raio * raio

  const double PI = 3.1415;
  const x = 3;
  const y = x * PI;

  stdout.write("Informe o raio: ");
  String entradaDoUsuario = stdin.readLineSync()!;
  final double raio = double.parse(entradaDoUsuario);

  final double area = PI * (raio * raio);

  print("O valor da área é: " + area.toString());
}
