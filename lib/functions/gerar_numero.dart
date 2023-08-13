import 'dart:math';

var numeroGerado = 0;
var quantidadeCliques = 0;

void numeroAleatorio() {
  Random gerarNumero = Random();
  numeroGerado = gerarNumero.nextInt(100);
  quantidadeCliques += 1;
}
