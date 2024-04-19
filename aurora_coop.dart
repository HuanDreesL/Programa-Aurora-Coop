void main(){
//CLASSE PRODUTO AURORA 
//Produto produto = Produto('Linguiça Pernil', 43567, 5.0, 18.89, 0, 0);
//produto.adicionaEstoque(3);
//produto.descontaEstoque(2);
//produto.calculaPrecoTotal(1);

//CLASSE CLIENTE BRASÃO 
//Cliente cliente = Cliente('Brasão', 12345, 5000);
//cliente.descontarLimiteCredito(400);
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
  
}