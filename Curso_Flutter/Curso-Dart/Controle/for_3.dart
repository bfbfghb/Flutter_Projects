main(){
  Map<String, double> notas = {
    "Guilherme": 9.7,
    "João Pedro": 7.6,
    "Maria Silva": 3.5,
    "Ana Augusta": 8.5,
    "Pedro Firmino": 6.8,
  };
  for(String nome in notas.keys){
    print("Nome do aluno é: $nome e a nota é ${notas[nome]}");
  }
  for (var nota in notas.values) {
    print("A nota é $nota");
  }

  for(var registro in notas.entries){
    print("O nome é ${registro.key} e a nota ${registro.value}");
  }
}