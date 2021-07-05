

imprimirProduto(int qtde, {required String nome, required double preco}){
    for (var i = 0; i < qtde; i++) {
          print("O produto ${nome} tem o preço de R\$${preco}");
    }
}

class Produto {
  String nome;
  double preco;
  Produto({
    required this.nome,
    this.preco = 9.99,
  });

}

main(){  
  var p3 = Produto(nome: "Caneta");
  var p1 = Produto(nome: "Lapis", preco: 4.59);
  var p2 = Produto(nome: "Geladeira", preco: 1454.99);

  imprimirProduto(1, preco: p1.preco, nome: p1.nome);
  imprimirProduto(4, nome: p2.nome, preco: p2.preco);
  imprimirProduto(15, nome: p3.nome, preco: p3.preco);
}