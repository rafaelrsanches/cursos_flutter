import 'dart:math';

main() {
  somaComPrint(2, 3);
  somaComPrint(4, 5);

  somaDoisNumerosAleatorios();
}

somaComPrint(int a, int b) {
  print(a + b);
}

somaDoisNumerosAleatorios() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print("Os números aleatórios foram $n1 e $n2.");
  print(n1 + n2);
}
