import 'cliente.dart';
import 'produto.dart';

class Venda{

  Cliente? cliente;
  List<Produto>? produtos;
  double? valorTotal;
  int? qtd;

  Venda(
    this.cliente,
    this.produtos,
    this.valorTotal,
    this.qtd
  );
void venda(String cnpj, List<int> cdProduto){

  bool todasAsCondicoes = true;

    if(cliente == null){
      print('Nome do Cliente inválido!');
        todasAsCondicoes = false;
    }

    if(produtos == null){
      print("Nenhum produto encontrado!");
        todasAsCondicoes = false;
    }

    if(valorTotal! > cliente!.limiteCredito!){
      print("Saldo Insuficiente!\nSaldo Atual: ${cliente!.limiteCredito}");
        todasAsCondicoes = false;
    }

    if(cliente!.cnpj! != cnpj){
      print("CNPJ do cliente inválido\nCNPJ inserido: $cnpj");
        todasAsCondicoes = false;
    }

    for(Produto produto in produtos!){

      if(produto.estoque! <= 0){
        print("Produto sem estoque!");
          todasAsCondicoes = false;      
      }

      if(qtd! > produto.qtd!){
        print("Falta de produto!\nQuantidade Pedida: $qtd\nQuantidade Restante: ${produto.qtd}\n");
          todasAsCondicoes = false;
      }

      if(!cdProduto.contains(produto.cdProduto)){
        print("Código do produto valido!");
          todasAsCondicoes = false;
      }
    }

    if(todasAsCondicoes){
      print("Compra Realizada com sucesso\nCliente: ${cliente!.nome}\nCNPJ: ${cliente!.cnpj}\nCodigo do produto: ${cdProduto}\nValor Total: ${valorTotal}\n");
      cliente!.descontarLimiteCredito(valorTotal!);

    }
  }
}
