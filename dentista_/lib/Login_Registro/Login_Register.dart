import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:magnumodonto/DataBase/db.dart';
import 'package:magnumodonto/Pages/Principal_Page.dart';
import 'package:magnumodonto/Shared/Variaveis.dart';

class Login_ extends StatefulWidget {
  @override
  _Login_State createState() => _Login_State();
}

class _Login_State extends State<Login_> {

  logar() async{
    Variaveis.dbUser.connect();
    try {
      Logar.results = await Variaveis.dbUser.conectar.query('SELECT nome from usuarios WHERE (email = ?) AND (senha = ?)', [Logar.email, Logar.senha]);
      print(Logar.results!.insertId);
      
      Logar.carregaritem = await Variaveis.dbUser.conectar.query('SELECT nome from usuarios');
        print(Logar.carregaritem);
      Navigator.pushReplacement<void, void>(context, MaterialPageRoute<void>(builder: (BuildContext context) => const Principal(),),);
      //carregaritens();
    } catch (e) {
      print(e);
      return AlertDialog(title: Text("Login erro"), content: Text(e.toString()), actions: [ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Ok"))],);
    }
  }

  bool olhar = false;

  var icon = Icons.toggle_off;

  olharverificar(){
    if(icon == Icons.toggle_off){
      setState((){
        olhar = true;
        icon = Icons.toggle_on;
      });
    }
    if(icon == Icons.toggle_on){
      setState((){
        olhar = false;
        icon = Icons.toggle_off;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login", textAlign: TextAlign.center,)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              TextField(onChanged: (value){Logar.email = value;}, decoration: InputDecoration(hintText: "Email", border: OutlineInputBorder()), textAlign: TextAlign.center,),
              SizedBox(height: 20),
              TextField(onChanged: (value){Logar.senha = value;}, obscureText: true, decoration: InputDecoration(hintText: "Senha", border: OutlineInputBorder()), textAlign: TextAlign.center,),
              //IconButton(onPressed: (){olharverificar();}, icon: Icon(icon)),
              SizedBox(height: 20),
              TextButton(onPressed: (){Navigator.pushReplacement<void, void>(context, MaterialPageRoute<void>(builder: (BuildContext context) => Register_(),),);}, child: Text("Registre-se")),
              ElevatedButton(onPressed: (){logar();}, child: Text("Logar")),
              SizedBox(height: 15),
          ],),
        ),
      ),
    );
  }
}


class Register_ extends StatefulWidget {
  const Register_({ Key? key }) : super(key: key);

  @override
  _Register_State createState() => _Register_State();
}

class _Register_State extends State<Register_> {


  registrar() async{
    Variaveis.dbUser.connect();

      try {
        Variaveis.dbUser.insert = await Variaveis.dbUser.conectar.query('insert into usuarios (email, senha, nome) values (?, ?, ?)', [Logar.email, Logar.senha, Logar.usuario]);
        print("Senha: ${Logar.senha} \n Usuario: ${Logar.usuario}");
        Logar.carregaritem = await Variaveis.dbUser.conectar.query('SELECT nome from usuarios');
        print(Logar.carregaritem);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Principal())); 
      } catch (e) {
        print(e);
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registrar", textAlign: TextAlign.center,)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              TextField(onChanged: (value){Logar.usuario = value;}, decoration: InputDecoration(hintText: "Nome", border: OutlineInputBorder()), textAlign: TextAlign.center,),
              SizedBox(height: 20),
              TextField(onChanged: (value){Logar.email = value;}, decoration: InputDecoration(hintText: "Email", border: OutlineInputBorder()), textAlign: TextAlign.center,),
              SizedBox(height: 20),
              TextField(onChanged: (value){Logar.senha = value;}, obscureText: true, decoration: InputDecoration(hintText: "Senha", border: OutlineInputBorder()), textAlign: TextAlign.center,),
              SizedBox(height: 20),
              TextField(onChanged: (value){Logar.confsenha = value;}, obscureText: true, decoration: InputDecoration(hintText: "Confirmar-Senha", border: OutlineInputBorder()), textAlign: TextAlign.center,),
              SizedBox(height: 20),
              TextButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login_()));}, child: Text("Logar-se")),
              ElevatedButton(onPressed: (){
                print("Senha: ${Logar.senha} \n Usuario: ${Logar.usuario}");
                registrar();
                }, child: Text("Registrar")),
              SizedBox(height: 15),
          ],),
        ),
      ),
    );
  }
}