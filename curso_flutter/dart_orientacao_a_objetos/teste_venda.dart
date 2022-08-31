import 'venda.dart';
import 'cliente.dart';
import 'venda_item.dart';
import 'produto.dart';

main() {
  Venda teste1 = Venda(
      cliente: Cliente(nome: "Rafael", cpf: "123.456.789-00"),
      itens: <VendaItem>[
        VendaItem(
            quantidade: 5,
            produto: Produto(
                codigo: 1, nome: "Caneta Bic", preco: 5.00, desconto: 0.10)),
        VendaItem(
            quantidade: 2,
            produto: Produto(
                codigo: 2, nome: "Caderno", preco: 10.00, desconto: 0.10))
      ]);

  print(teste1.valorTotal);
  print(teste1.itens[0].produto?.nome);
  print(teste1.cliente?.cpf);
}
