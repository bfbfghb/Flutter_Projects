import 'dart:io';
main() {
  var digitado = "";

  int a = 0;
  do{
    stdout.write("Digite algo ou sair: ");
    digitado = stdin.readLineSync()!;
  } while(digitado != "sair");

  print("Fim!");
}