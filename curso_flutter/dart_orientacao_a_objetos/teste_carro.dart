import 'carro.dart';

main() {
  Carro lamborghini = Carro(300);

  while (!lamborghini.estaNoLimite()) {
    print(lamborghini.acelerar());
  }

  print(lamborghini.estaNoLimite());
  print(lamborghini.frear());
}
