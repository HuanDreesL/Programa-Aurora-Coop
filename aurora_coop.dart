import 'produto.dart';
import 'cliente.dart';
import 'venda.dart';
import 'empresa.dart';
void main(){

Produto produto1 = Produto('Linguiça Pernil', 450, 5.0, 18.90, 3, 3);

Cliente cliente1 = Cliente('Brasão', '83.307.926/0001-51', 5000);

Venda venda1 = Venda(cliente1, [produto1], 189.90, 3);
venda1.venda('83.307.926/0001-51', [450]);

Empresa empresa = Empresa('Aurora Coop', "83.310.441/0001-17", [cliente1], [produto1], [venda1]);
empresa.calculaFaturamento();

}
