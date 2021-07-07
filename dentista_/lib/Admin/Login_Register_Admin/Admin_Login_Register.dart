import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:magnumodonto/DataBase/db.dart';
import 'package:magnumodonto/Pages/Principal_Page.dart';
import 'package:magnumodonto/Shared/Variaveis.dart';

class LoginAdmin extends StatefulWidget {
  @override
  _LoginAdminState createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  var teste;

  logar() async{
    try {
        await Variaveis.dbAdmin.connect();
        Logar.results = await Variaveis.dbAdmin.conectar.query('SELECT nome from usuarios WHERE (email = ?) AND (senha = ?)', [Logar.email, Logar.senha]);
        Future.delayed(Duration(seconds: 5));
        print(Logar.results!.fields.first);
      try {
        // Logar.carregarNome = await Variaveis.dbAdmin.conectar.query('SELECT nome from calendario');
        // Logar.carregarEmail = await Variaveis.dbAdmin.conectar.query('SELECT email from calendario');
        // Logar.carregarDia = await Variaveis.dbAdmin.conectar.query('SELECT dia from calendario');
        // Logar.carregarMes = await Variaveis.dbAdmin.conectar.query('SELECT mes from calendario');
        //Navigator.pushReplacement<void, void>(context, MaterialPageRoute<void>(builder: (BuildContext context) => const Principal(),),);
      } catch (e) {
        print(e);
      }
    //carregaritens();
    } catch (e) {
      print(e);
      return AlertDialog(title: Text("Login erro"), content: Text(e.toString()), actions: [ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Ok"))],);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Logar"))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text("Entre com uma conta de Administrador"),
              SizedBox(height: 50),
              TextField(onChanged: (value){Logar.email = value;}, decoration: InputDecoration(hintText: "Email", border: OutlineInputBorder()), textAlign: TextAlign.center,),
              SizedBox(height: 20),
              TextField(onChanged: (value){Logar.senha = value;}, obscureText: true, decoration: InputDecoration(hintText: "Senha", border: OutlineInputBorder()), textAlign: TextAlign.center,),
              //IconButton(onPressed: (){olharverificar();}, icon: Icon(icon)),
              SizedBox(height: 20),
              ElevatedButton(onPressed: (){logar();}, child: Text("Logar")),
              SizedBox(height: 15),
          ],),
        ),
      ),
    );
  }
}