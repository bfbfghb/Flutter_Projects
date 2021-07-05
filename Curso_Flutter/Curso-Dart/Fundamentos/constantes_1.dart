import 'dart:io';

main(){
  // Area da circuferência = PI * raio * raio
  const PI = 3.1415;

  stdout.write("Informe o raio: ");
  String entradaDoUsuario = stdin.readLineSync()!;
  final raio = double.parse(entradaDoUsuario);

  final area = PI * raio * raio;
  print("O valor da área é: " + area.toStringAsFixed(4));
}