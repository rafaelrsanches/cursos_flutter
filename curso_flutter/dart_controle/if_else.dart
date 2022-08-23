import 'dart:math';

main() {
  int nota = Random().nextInt(11);

  print("A nota é: $nota");

  if (nota >= 9) {
    print("Quadro de Honra!");
  }

  if (nota >= 7) {
    print("Aprovado!");
  } else if (nota >= 5) {
    print("Recuperação!");
  } else if (nota >= 4) {
    print("Recuperação + Trabalho");
  } else {
    print("Reprovado!");
  }
}
