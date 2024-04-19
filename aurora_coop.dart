void main(){

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