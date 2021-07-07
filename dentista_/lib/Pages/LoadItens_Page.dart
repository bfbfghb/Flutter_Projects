import 'package:flutter/material.dart';
import 'package:magnumodonto/Shared/Variaveis.dart';

class LoadItens extends StatefulWidget {
  static List carregarnome = [];
  static List carregaremail = [];
  static List carregardia = [];
  static List carregarmes = [];
  @override
  _LoadItensState createState() => _LoadItensState();
}

class _LoadItensState extends State<LoadItens> {
  @override
  Widget build(BuildContext context) {
  return ListView.builder(itemCount: LoadItens.carregardia.length, itemBuilder: (context, index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(color: Colors.amberAccent, width: double.maxFinite, height: 50, child: Text("Olá ${Logar.usuario} \n Você tem consulta para ${LoadItens.carregardia[index]} / ${LoadItens.carregarmes[index]}", textAlign: TextAlign.center,),),
        ],),
      );
    });
  }
}