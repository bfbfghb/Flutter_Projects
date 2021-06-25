import 'dart:io';

import 'package:flutter/material.dart';

main(){
  runApp(Principal());
}

class Principal extends StatefulWidget {
  const Principal({ Key? key }) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  double andardireito = 0.0;
  double andaresquerdo = 0.0;
  bool sinal = false;
  double aceleracao = 0.0;
  double velocidade = 0.0;

  atualizar() async{
    velocidade = aceleracao * aceleracao;
    sinal = true;
    while(sinal){
      ++aceleracao;
      velocidade = aceleracao * aceleracao;
      setState(() {
        andardireito = velocidade;
      });
      await Future.delayed(Duration(seconds: 15));
      sinal = false;
    }

    while(sinal == false){
      ++aceleracao;
      velocidade = aceleracao * aceleracao;
      setState(() {
        andaresquerdo = velocidade;
      });
      await Future.delayed(Duration(seconds: 15));
      sinal = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    atualizar();
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
          Rua(),
          Padding(
            padding: EdgeInsets.only(left: 350, top: andardireito),
            child: Container(color: Colors.blue, width: 25, height: 50,),
          ),
          Padding(
            padding: EdgeInsets.only(left: 250, top: andaresquerdo),
            child: Container(color: Colors.blue, width: 25, height: 50,),
          ),
          ElevatedButton(onPressed: atualizar, child: Text("Andar")),
        ],),
      ),
    );
  }
}

class Rua extends StatelessWidget {
  const Rua({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 100, height: double.infinity, color: Colors.black,),
        Container(width: 5, height: double.maxFinite, color: Colors.white,),
        Container(width: 100, height: double.maxFinite, color: Colors.black,
        ),
      ],
    );
  }
}