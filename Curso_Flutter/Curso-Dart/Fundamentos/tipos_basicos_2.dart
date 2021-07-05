/*
  - List
  - Set
  - Map
*/

main(){
  // List
  List aprovados = ["Ana", "Carlos", "Daniel", "Rafael"];
  aprovados.add("Ana");
  print(aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[0]);
  print(aprovados.length);

  var telefones = {
    "João": "+55 (11) 99105-0762",
    "Betina": "+92 (78) 7210-7624",
    "Pedro": "+85 (75) 45455-8989",
  };
  print(telefones is Map);
  print(telefones);
  print(telefones['Pedro']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  var times = {'vasco', "flamengo", 'fortaleza', 'são paulo'};

  print(times is Set);
  times.add("Palmeiras");
  times.add("Palmeiras");
  print(times.length);
  print(times.contains("vasco"));
  print(times.first);
  print(times.last);
  print(times);
}