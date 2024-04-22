
void main(){

Produto produto1 = Produto('Linguiça Pernil', 450, 5.0, 18,89, 3);
Produto produto2 = Produto('Empanado', 550, 1.0, 10,99, 3);
Cliente cliente1 = Cliente('Brasão', 12345678, 5000);
Cliente cliente2 = Cliente('Alfa', 87654321, 5000);
Venda venda1 = Venda(cliente1, [produto1], 283.35);
Venda venda2 = Venda(cliente2, [produto2], 32.97);
venda1.venda(12345678, [450]);
venda2.venda(87654321, [550]);

}
class Produto{

  String? nome;
  int? cdProduto;
  double? pesoEmbalagem;
  double? vlrPeso;
  double? estoque;
  int? qtd;

  Produto(
    this.nome,
    this.cdProduto,
    this.pesoEmbalagem,
    this.vlrPeso,
    this.estoque,
    this.qtd
  );
  
void adicionaEstoque(int qtd){
  estoque = estoque !+ qtd;
  print("Produto Aurora adicionado com Sucesso!\nProduto: $nome\nCódigo do Produto: $cdProduto\nQuantidade: $qtd");
}
void descontaEstoque(int qtd){
  estoque = estoque !- qtd;
  print("Produto Aurora descontado do estoque\nProduto: $nome\nCódigo do Produto: $cdProduto\nQuantidade descontada: $qtd");
}
void calculaPrecoTotal(int qtd){
  double vlrPreco = qtd * pesoEmbalagem! * vlrPeso!;
  print("Valores do Produto\nNome do Produto: $nome\nQuantiade: $qtd\nValor do Peso: $vlrPeso\nPeso da Embalagem: $pesoEmbalagem\nValor Total do Produto: $vlrPreco\n");
}
}
class Cliente{
  
  String? nome;
  int? cnpj;
  double? limiteCredito;

  Cliente(
    this.nome,
    this.cnpj,
    this.limiteCredito
  );
void descontarLimiteCredito(double descontarLimite){
  limiteCredito = limiteCredito! - descontarLimite;
  print("Desconto do Limite de Credito\nValor descontado:$descontarLimite \nLimite Atual: $limiteCredito"); 
}
}
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
class Empresa{

  List<Cliente>? cliente;
  List<Produto>? produtos;
  List<Venda>? vendas;

  Empresa(
    this.cliente,
    this.produtos,
    this.vendas
  );
}
