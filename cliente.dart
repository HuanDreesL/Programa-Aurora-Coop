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