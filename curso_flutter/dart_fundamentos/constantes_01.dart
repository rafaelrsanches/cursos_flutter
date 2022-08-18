import 'dart:io';

main() {
  // Área da circunferência = PI * raio * raio

  const double pi = 3.1415;
  const x = 3;
  const y = x * pi;

  stdout.write("Informe o raio: ");
  String entradaDoUsuario = stdin.readLineSync()!;
  final double raio = double.parse(entradaDoUsuario);

  final double area = pi * (raio * raio);

  print("O valor da área é: " + area.toString());
}
