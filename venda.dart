import 'cliente.dart';
import 'produto.dart';

class Venda{

  Cliente? cliente;
  List<Produto>? produtos;
  double? valorTotal;

  Venda(
    this.cliente,
    this.produtos,
    this.valorTotal
  );
void venda(int cnpj, List<int> cdProduto){

  for(Produto produto in produtos!){

    if(cnpj > 1 && valorTotal !< cliente!.limiteCredito! && produtos!.length >= 1 && produto.estoque !> 1){

      cliente?.descontarLimiteCredito(valorTotal!);

      print("Compra Realizada com Sucesso\nCliente: ${cliente!.nome}\nCNPJ: ${cliente!.cnpj}\nNome do Produto:${produto.nome}\nCódigo do Produto: ${produto.cdProduto}\nValor Total ${valorTotal}");
    
    }
    else{

      print("Compra não Realizada!");
  
    }
  }
}
}