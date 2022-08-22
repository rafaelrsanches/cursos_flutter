main() {
  // Operadores Aritméticos (binário/infix)
  int a = 7;
  int b = 3;
  int resultado = a + b;

  print(resultado);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(a + (b * a) - (b / a));

  // Operadores lógicos
  bool ehFragil = true;
  bool ehCaro = true;

  print(ehFragil && ehCaro);
  print(ehFragil || ehCaro);
  print(ehFragil ^ ehCaro);
  print(!ehFragil);
  print(!!ehCaro);
}
