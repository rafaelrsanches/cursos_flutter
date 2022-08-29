class Data {
  int? dia;
  int? mes;
  int? ano;

  // Data(int dia, int mes, int ano) {
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  // Contrutores nomeados.
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});
  Data.ultimoDiaDoAno(int ano) {
    this.dia = 31;
    this.mes = 12;
    this.ano = ano;
  }

  String obterDataFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterDataFormatada();
  }
}

main() {
  var dataAniversario = new Data(18, 04, 2014);
  //dataAniversario.dia = 18;
  //dataAniversario.mes = 04;
  //dataAniversario.ano = 2014;

  Data dataCompra = new Data(01, 01, 1969);
  dataCompra.dia = 1;
  dataCompra.mes = 1;
  dataCompra.ano = 1970;

  //print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  //print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

  print(dataAniversario.obterDataFormatada());
  print(dataCompra.obterDataFormatada());

  print(dataAniversario);

  print(Data.com(ano: 2022));

  var dataFinal = Data.com(dia: 12, mes: 07, ano: 2024);
  print(dataFinal);

  print(Data.ultimoDiaDoAno(2014));
}
