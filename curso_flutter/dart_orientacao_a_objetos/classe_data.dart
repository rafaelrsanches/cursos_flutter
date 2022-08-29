class Data {
  int? dia;
  int? mes;
  int? ano;

  String obterDataFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterDataFormatada();
  }
}

main() {
  var dataAniversario = new Data();
  dataAniversario.dia = 18;
  dataAniversario.mes = 04;
  dataAniversario.ano = 2014;

  Data dataCompra = new Data();
  dataCompra.dia = 1;
  dataCompra.mes = 1;
  dataCompra.ano = 1970;

  //print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  //print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

  print(dataAniversario.obterDataFormatada());
  print(dataCompra.obterDataFormatada());

  print(dataAniversario);
}
