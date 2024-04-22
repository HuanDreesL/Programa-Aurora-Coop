import 'venda.dart';
import 'cliente.dart';
import 'produto.dart';

class Empresa{

  String? nome;
  int? cnpj;
  double? faturamento;
  List<Cliente>? cliente;
  List<Produto>? produtos;
  List<Venda>? vendas;

  Empresa(
    this.nome,
    this.cnpj,

    this.cliente,
    this.produtos,
    this.vendas
  );
void calculaFaturamento(){
  double faturamento = 0;
  for(Venda venda in vendas!){
    faturamento += venda.valorTotal!;
  }
  print("Faturamento Total de Vendas\nEmpresa: $nome\nCNPJ: $cnpj\nFaturamento: $faturamento");
}
}
