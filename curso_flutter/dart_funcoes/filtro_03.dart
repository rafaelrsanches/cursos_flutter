main() {
  var notas = [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1];
  // Filtro com where implicito
  var boasNotasFn = (double nota) => nota >= 7.5;

  var somenteNotasBoas = filtrar<double>(notas, boasNotasFn);
  print(somenteNotasBoas);

  var nomes = ["Ana", "Bia", "Rebeca", "Gui", "João"];
  var nomesGrandesFn = (String nome) => nome.length >= 5;

  print(filtrar(nomes, nomesGrandesFn));
}

List<T>? filtrar<T>(List<T> lista, bool Function(T) fn) {
  List<T> listraFiltrada = [];

  for (T elemento in lista) {
    if (fn(elemento)) {
      listraFiltrada.add(elemento);
    }
  }
  return listraFiltrada;
}
