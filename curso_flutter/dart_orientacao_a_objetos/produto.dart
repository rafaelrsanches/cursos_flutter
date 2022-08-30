class Produto {
  int? codigo;
  String? nome;
  double preco = 0;
  double desconto = 0;

  Produto({this.codigo, this.nome, this.preco = 0, this.desconto = 0});

  double get precoComDesconto {
    return ((1 - this.desconto) * (this.preco));
  }
}
