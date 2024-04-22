import 'produto.dart';
import 'cliente.dart';
import 'venda.dart';
import 'empresa.dart';

void main(){

Produto produto1 = Produto('Linguiça Pernil', 450, 5.0, 18,89, 3);
Produto produto2 = Produto('Empanado', 550, 1.0, 10,99, 3);
produto1.adicionaEstoque(3);
produto2.adicionaEstoque(3);
produto1.descontaEstoque(2);
produto2.descontaEstoque(2);
produto1.calculaPrecoTotal(3);
produto2.calculaPrecoTotal(3);

Cliente cliente1 = Cliente('Brasão', 12345678, 5000);
Cliente cliente2 = Cliente('Alfa', 87654321, 5000);

Venda venda1 = Venda(cliente1, [produto1], 283.35);
Venda venda2 = Venda(cliente2, [produto2], 32.97);
venda1.venda(12345678, [450]);
venda2.venda(87654321, [550]);

Empresa empresa = Empresa('Aurora Coop', 83310441000117,[cliente1, cliente2], [produto1, produto2], [venda1, venda2]);
empresa.calculaFaturamento();

}
