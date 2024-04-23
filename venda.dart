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

    for(Produto produto in produtos!){
    
      if(cliente == null
        || produtos == null
        || produto.estoque! <= 0 
        || valorTotal !> cliente!.limiteCredito!
        || cliente!.cnpj != cnpj){

       print("Não foi possivel realizar Compra\n");
      }
      else{
        print("Compra Realizada com sucesso\n");
        cliente!.descontarLimiteCredito(valorTotal!);
      }
    }
  }
}