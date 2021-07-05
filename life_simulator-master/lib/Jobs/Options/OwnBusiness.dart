import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:life_simulator/Jobs/jobs_bar.dart';
import 'package:life_simulator/Shared/var_Controller.dart';

class OwnBusiness extends StatefulWidget {

  @override
  _OwnBusinessState createState() => _OwnBusinessState();
}

class _OwnBusinessState extends State<OwnBusiness> {
  // gerar() async{
  //   setState(() {
  //     Empresa.bitcoin += (Empresa.machines / 1000);
  //   });
  //   gerar();
  // }
  Bussiness(){
    if(Empresa.empcriada == true){
      return Scaffold(
        appBar: AppBar(
          title: Text("Bussiness"),
          actions: [IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => job_Bar()));
          }, icon: Icon(Icons.arrow_back))],),
          body: Column(
            children: [
            SizedBox(height: 50),
            Text("Bitcoins: ${Empresa.bitcoin.toStringAsFixed(2)}", style: TextStyle(fontSize: 25),),
            Text("Machines: ${Empresa.machines}", style: TextStyle(fontSize: 25)),
          ],),
        bottomSheet: Row(
          children: [
            ElevatedButton(child: Text("Buy"), onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Buy()));},),
            //ElevatedButton(child: Text("Sell"), onPressed: (){return Sell();},),
          ],),
      );
    }
    if(Empresa.empcriada == false){
      return Scaffold(
        appBar: AppBar(title: Text("Bussiness"),
        actions: [IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => job_Bar()));
        }, icon: Icon(Icons.arrow_back))],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              Text("Nome da Empresa"),
              TextField(
                maxLength: 16,
                textAlign: TextAlign.center,
                onChanged: (value){Empresa.nome = value;}
              ),
              SizedBox(height: 15),
              Text("Entrada"),
              TextField(
                maxLength: 16,
                textAlign: TextAlign.center,
                onChanged: (value){
                  setState(() {
                    Empresa.entrada = int.parse(value);
                  });
                }
              ),
              SizedBox(height: 15),
              Container(
                width: double.maxFinite,
                child: ElevatedButton(onPressed: (){
                  if(var_Controller.money < (100000+Empresa.entrada)){
                    showDialog(context: (context ), builder: (BuildContext context){
                      return AlertDialog(title: Text("Bussiness Error"), content: Text("Dinheiro insuficiente"), actions: [ ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Close"))],);
                    });
                    Dialog(child: Text("Você não tem dinheiro suficiente"));
                  }
                  else if(var_Controller.money >= 100000+Empresa.entrada){
                    var_Controller.money -= 100000+Empresa.entrada;
                    Empresa.empcriada = true; 
                    Empresa.bitcoin = (Empresa.entrada+80000)/7000; 
                    var_Controller.save.Salvar();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => job_Bar()));
                  }
                  }, child: Text("Criar"))),
              Text("Total a pagar: ${var_Controller.formatter.format(100000+Empresa.entrada)}"),
          ],),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var_Controller.save.Salvar();
    return Bussiness();
  }
}


class Buy extends StatefulWidget {

  @override
  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  int menosbitcoin, maisbitcoin;
  int buymachines, buybitcoin = 0;

  atualizarvalores() async{
    menosbitcoin = Empresa.random.nextInt(4000);
    maisbitcoin = Empresa.random.nextInt(5000);
    setState(() {
      Empresa.valuebitcoin -= menosbitcoin;
      Empresa.valuebitcoin += maisbitcoin;
      Empresa.valuemachines = (Empresa.valuebitcoin / 4);
    });
    await Future.delayed(Duration(seconds: 5));
    //atualizarvalores();
  }

  Buy(){
    atualizarvalores();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => OwnBusiness()));
          }, icon: Icon(Icons.arrow_back))
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Text("Buy", style: TextStyle(fontSize: 25),),
          Text("Buy Bitcoin ${var_Controller.formatter.format(Empresa.valuebitcoin)}") ,
          TextField(onChanged: (value){buybitcoin = int.parse(value);}, textAlign: TextAlign.center),
          ElevatedButton(
            onPressed: (){
              if(var_Controller.money > (Empresa.valuebitcoin * buybitcoin)){
                var_Controller.money -= (Empresa.valuebitcoin * buybitcoin);
                Empresa.bitcoin += buybitcoin;
              }
              else if(var_Controller.money < (Empresa.valuebitcoin * buybitcoin)){
                return showDialog(context: (context ), builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Buy Bitcoin error"), content: Text("Dinheiro insuficiente"), actions: [ ElevatedButton(onPressed: (){Navigator.pop(context);}, 
                  child: Text("Close"))],
                  );
                });}
            },
          child: Text("Buy BitCoin"),
          ), 
          SizedBox(height: 50),
          Text("Buy Machines ${var_Controller.formatter.format(Empresa.valuemachines)}"),
          TextField(onChanged: (value){buymachines = int.parse(value);}, textAlign: TextAlign.center,),
          ElevatedButton(onPressed: (){
            if(var_Controller.money > (Empresa.valuemachines * buymachines)){
                var_Controller.money -= (Empresa.valuemachines * buymachines);
                Empresa.machines += buymachines;
              }
              else if(var_Controller.money < (Empresa.valuemachines * buymachines)){
                return showDialog(context: (context ), builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Buy Machines error"), content: Text("Dinheiro insuficiente"), actions: [ ElevatedButton(onPressed: (){Navigator.pop(context);}, 
                  child: Text("Close"))],
                  );
                });}
          }, child: Text("Buy BitCoin")),
        ],),
      bottomNavigationBar: Row(
        children: [
          ElevatedButton(child: Text("Buy"), onPressed: (){return Buy();},),
          //ElevatedButton(child: Text("Sell"), onPressed: (){return Sell();},),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Buy();
  } 
}