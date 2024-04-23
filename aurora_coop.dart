import 'produto.dart';
import 'cliente.dart';
import 'venda.dart';
import 'empresa.dart';

void main(){

Produto produto1 = Produto('Linguiça Pernil', 450, 5.0, 18.90, 3, 3);
Produto produto2 = Produto('Empanado', 900, 0.500, 10.59, 3, 3);

Cliente cliente1 = Cliente('Brasão', '012345', 5000);

Venda venda1 = Venda(cliente1, [produto1], 189.90);
venda1.venda('012345', [450]);

Venda venda2 = Venda(cliente1, [produto2], 52.95);
venda2.venda('012345', [900]);

Empresa empresa = Empresa('Aurora Coop', "83.310.441/0001-17", [cliente1], [produto1, produto2], [venda1, venda2]);
empresa.calculaFaturamento();

}
