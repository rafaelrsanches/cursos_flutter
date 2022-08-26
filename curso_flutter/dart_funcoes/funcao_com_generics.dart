main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];

  print(segundoElementoV1(lista));

  print(segundoElementoV2<int>(lista));
}

Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

T? segundoElementoV2<T>(List<T> lista) {
  return lista.length >= 2 ? lista[1] : null;
}
