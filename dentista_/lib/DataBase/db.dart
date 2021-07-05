import 'package:flutter/material.dart';
import 'package:galileo_mysql/galileo_mysql.dart';
import 'package:magnumodonto/Pages/Principal_Page.dart';
import 'package:magnumodonto/Shared/Variaveis.dart';

class DBUser{
  var context;
  final loginDB = ConnectionSettings(
    db: DBLogin.db,
    host: DBLogin.host,
    password: DBLogin.password,
    port: DBLogin.port,
    user: DBLogin.user,
  );
  var conectar;
  var insert;

  connect() async{
    conectar = await MySqlConnection.connect(loginDB);
    try {
      await conectar.query('CREATE TABLE usuarios (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, nome varchar(255), email varchar(255), senha varchar(255))');
    } catch (e) {
      print(e);
    }
  }
}

class DBAdmin{
  final loginDB = ConnectionSettings(
    db: DBLogin.db,
    host: DBLogin.host,
    password: DBLogin.password,
    port: DBLogin.port,
    user: DBLogin.user,
  );
  var conectar;

  connect() async{
    conectar = await MySqlConnection.connect(loginDB);
    await conectar.query('CREATE TABLE admins (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, nome varchar(255), email varchar(255), senha varchar(255))');
  }

  logar(){
    try {
      connect();
    } catch (e) {
      print(e);
    }

  }

  registrar(){
    try {
      connect();
    } catch (e) {
      print(e);
    }
  }
}