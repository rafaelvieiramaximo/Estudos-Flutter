import 'dart:io';
import 'dart:math';

void main(){
  var random = Random();
  int numeroAleatorio = random.nextInt(100) + 1;

  int tentativas = 0;

  print('Bem vindo ao jogo da Adivinhação!!');
  print('Tente adivinhar o número entre 1 a 100!');

  while (true){
    stdout.write('Digite um número: ');//Stdout.write é a captura do valor digitado
    String? input = stdin.readLineSync();
    
    if (input == null){
      print('Entrada inválida!! Tente novamente');
      continue;
    }

    int palpite;

    try{
      palpite = int.parse(input);
    }catch(e){
      print('Por favor, digite um número válido.');
      continue;
    }

    tentativas++;

    if (palpite == numeroAleatorio){
      print('Parabéns! Você acertou em $tentativas tentativas!');
      break;
    } else if (palpite < numeroAleatorio){
      print('O número é maior!');
    } else {
      print('O número é menor!');
  }
}
}