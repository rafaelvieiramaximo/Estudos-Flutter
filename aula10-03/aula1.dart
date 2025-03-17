void main() {
  // Variáveis
  String nome = "João";
  int idade = 30;
  double altura = 1.80;
  bool maiorIdade = true;

  // Listas
  List<String> frutas = ["Banana", "Maçã", "Uva"];
  List<int> numeros = [1, 2, 3, 4, 5];

  // Maps
  Map<String, dynamic> pessoa = {
    "nome": "João",
    "idade": 30,
    "altura": 1.80,
    "maiorIdade": true
  };

  // Condições
  if (idade >= 18) {
    print("Maior de idade");
  } else {
    print("Menor de idade");
  }

  // Laços de repetição
  for (int i = 0; i < frutas.length; i++) {
    print(frutas[i]);
  }

  for (String fruta in frutas) {
    print(fruta);
  }

  int i = 0;
  while (i < frutas.length) {
    print(frutas[i]);
    i++;
  }

  // Funções
  void exibirMensagem() {
    print('Olá, mundo!');
  }

  exibirMensagem();

  String exibirNome(String nome) {
    return "Olá, $nome!";
  }

  print(exibirNome("João"));

  // Criando e utilizando objetos
  Pessoa pessoa1 = Pessoa("João", 30, 1.80, true);
  pessoa1.exibirNome();

  Cachorro cachorro1 = Cachorro("Rex", 2);
  cachorro1.dormir();
  cachorro1.latir();
}

// Classes
class Pessoa {
  String nome;
  int idade;
  double altura;
  bool maiorIdade;

  Pessoa(this.nome, this.idade, this.altura, this.maiorIdade);

  void exibirNome() {
    print("Olá, $nome!");
  }
}

// Herança
class Animal {
  String nome;
  int idade;

  Animal(this.nome, this.idade);

  void dormir() {
    print("$nome está dormindo!");
  }
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  void latir() {
    print("$nome está latindo!");
  }
}
