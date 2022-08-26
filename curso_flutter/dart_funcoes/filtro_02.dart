main() {
  var notas = [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1];

  // Filtro com where, explicito e implicito
  bool Function(double) notasBoasFn = (double nota) => nota >= 7;
  var notasMuitoBoasFn = (double nota) => nota >= 8.8;

  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);

  print(notasBoas);
  print(notasMuitoBoas);
}
