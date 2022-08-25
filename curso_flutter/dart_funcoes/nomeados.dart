main() {
  saudarPessoa(nome: "João", idade: 33);
  saudarPessoa(idade: 30, nome: "Maria");

  imprimirData(dia: 25, mes: 08, ano: 2022);
}

saudarPessoa({String? nome, int? idade}) {
  print("Olá $nome, nem parece que você tem $idade anos!");
}

imprimirData({int dia = 1, int mes = 1, int ano = 1970}) {
  print("$dia/$mes/$ano");
}
