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
void venda(String cnpj, List<int> cdProduto){

    if(cliente == null){
      print('Nome do Cliente inválido!');
    }
    if(produtos == null){
      print("Nenhum produto encontrado!");
    }
    for(Produto produto in produtos!){
      if(produto.estoque! <= 0){
        print("Produto sem estoque!");
      }
    }
    if(valorTotal! > cliente!.limiteCredito!){
      print("Saldo Insuficiente!");
    }
    if(cliente!.cnpj! != cnpj){
      print("CNPJ do cliente inválido");
    }
    else{
      print("Compra Realizada com sucesso\nCliente: ${cliente!.nome}\nCNPJ: ${cliente!.cnpj}\nCodigo do produto: ${cdProduto}\nValor Total: ${valorTotal}\n");
      cliente!.descontarLimiteCredito(valorTotal!);
    }
    /*
    for(var i in cdProduto){
      Produto a =  produtos!.where((e)=>e.cdProduto == i).first;
    } 
    */     
  }
}
