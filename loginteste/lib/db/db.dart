import 'package:flutter/material.dart';
import 'package:loginteste/main.dart';
import 'package:galileo_mysql/galileo_mysql.dart';

class DB{
  var connect;
  var register;
  var login;

  conectar() async{
    connect = await MySqlConnection.connect(
      ConnectionSettings(
        host: 'sql10.freemysqlhosting.net',
        port: 3306, 
        user: 'sql10422434',
        password: '3LM1YHmaTd',
        db: 'sql10422434', 
      )
    );
    try {
      await connect.query('CREATE TABLE users (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar(255), email varchar(255), senha varchar(255))');
    } catch (e) {
      print("já foi criado");
    }
  }

  registrar() async{
    register = await connect.query('insert into users (name, senha, email) values (?, ?, ?)', [Variaveis.usuario, Variaveis.senha, Variaveis.email]);
    print("funcionando");
    AlertDialog(title: Text("Registrado!"), content: Text("Registrado com sucesso, parabens ${Variaveis.usuario}"),);
  }

  logar() async{

  }

}