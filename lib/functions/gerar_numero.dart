import 'dart:math';

var numeroGerado = 0;

void numeroAleatorio() {
  Random gerarNumero = Random();

  numeroGerado = gerarNumero.nextInt(9);
}
