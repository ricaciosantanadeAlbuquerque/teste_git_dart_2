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
      
    } catch (e) {
      throw Exception('Erro! O valor $valor não é um número');
    }
  } else {
    print("ERRO!");
  }
}
