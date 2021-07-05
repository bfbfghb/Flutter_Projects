import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginteste/db/db.dart';

main(){
  runApp(Registrar());
}

class Variaveis{
  static String usuario = "";
  static String senha = "";
  static String email = "";
  static var db = new DB();
}

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Email"),
            TextFormField(onChanged: (value){Variaveis.email = value;}, decoration: InputDecoration(hintText: "Email"),),
            SizedBox(height: 50),
            Text("Senha"),
            TextFormField(onChanged: (value){Variaveis.senha = value;}),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){}, child: Text("Registrar")),
        ],)
      )
    );
  }
}

class Registrar extends StatelessWidget {
  const Registrar({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Email"),
            TextFormField(onChanged: (email){Variaveis.email = email;}, textAlign: TextAlign.center, decoration: InputDecoration(hintText: "Email"), ),
            SizedBox(height: 50),
            Text("Usuario"),
            TextFormField(onChanged: (user){Variaveis.usuario = user;},maxLength: 16, textAlign: TextAlign.center),
            SizedBox(height: 50),
            Text("Senha"),
            TextFormField(onChanged: (password){Variaveis.senha = password;}, textAlign: TextAlign.center, maxLength: 16, obscureText: true,),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){
              Variaveis.db.conectar();
              Variaveis.db.registrar();
            }, child: Text("Registrar")),
        ],),
      )
    );
  }
}