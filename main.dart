import 'dart:io';

void main() {
  menu();
}

void menu() {
  int valor = 0;
  print("Digite 1 para somar");
  print("Digite 2 para subtrair");
  print("Digite 3 para multiplicar");
  print("digite 4 para dividir");
  String? entradaOp = stdin.readLineSync();

  if (entradaOp!.isNotEmpty) {
    try {
      valor = int.parse(entradaOp);
      escolha(valor);
    } catch (e) {
      throw Exception('Erro! O valor $valor não é um número');
    }
  } else {
    print("ERRO!");
  }
}

void escolha(int op) {
  switch (op) {
    case 1:
      print("Digite o primeiro valor ");
      String? valor1 = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? valor2 = stdin.readLineSync();
      soma(valor1!, valor2!);
      break;

    case 2:
      print("Digite o primeiro valor ");
      String? valor1 = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? valor2 = stdin.readLineSync();
      subtracao(valor1!, valor2!);
      break;
    case 3:
      print("Digite o primeiro valor ");
      String? valor1 = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? valor2 = stdin.readLineSync();

      break;
    case 4:
      print("Digite o primeiro valor ");
      String? valor1 = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? valor2 = stdin.readLineSync();

      break;
    default:
      print("Valor fora da faixa !");
  }
}

void soma(String valor1, String valor2) {
  // conversao

  int num1 = int.parse(valor1);
  int num2 = int.parse(valor2);

  print("Soma ${num1 + num2}");
}

void subtracao(String valor1, String valor2) {
  int num1 = int.parse(valor1);
  int num2 = int.parse(valor2);

  print("Subtração ${num1 - num2}");
}


