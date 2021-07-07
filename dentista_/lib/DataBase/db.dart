import 'package:galileo_mysql/galileo_mysql.dart';
import 'package:magnumodonto/Pages/LoadItens_Page.dart';
import 'package:magnumodonto/Pages/MarcarConsulta_Page.dart';
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

  logar() async{
    try {
       await connect();
    } catch (e) {
      print(e);
    }

  }

  registrar() async{
    try {
      await connect();
    } catch (e) {
      print(e);
    }
  }
}

class Calendario{
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
    try {
      await conectar.query('CREATE TABLE calendario (nome varchar(255), email varchar(255), dia varchar(255), mes varchar(255))');
    } catch (e) {
      print(e);
    }
  }

  ler() async{
    await connect();
    try {
      Logar.carregarNome = await Variaveis.dbUser.conectar.query('SELECT nome from calendario WHERE (email = ?)', [Logar.email]);
      Logar.carregarEmail = await Variaveis.dbUser.conectar.query('SELECT email from calendario WHERE (email = ?)', [Logar.email]);
      Logar.carregarDia = await Variaveis.dbUser.conectar.query('SELECT dia from calendario WHERE (email = ?)', [Logar.email]);
      Logar.carregarMes = await Variaveis.dbUser.conectar.query('SELECT mes from calendario WHERE (email = ?)', [Logar.email]);
      for (var item in Logar.carregarNome!) {
        LoadItens.carregarnome.add(item[0]);
        print("Name: ${item[0]}");
      }
      for (var item in Logar.carregarEmail!) {
        LoadItens.carregaremail.add(item[0]);
        print("Email: ${item[0]}");
      }
      for (var item in Logar.carregarDia!) {
        LoadItens.carregardia.add(item[0]);
        print("Dia: ${item[0]}");
      }
      for (var item in Logar.carregarMes!) {
        LoadItens.carregarmes.add(item[0]);
        print("Mes: ${item[0]}");
      }
    } catch (e) {
      print(e);
    }
  }
  var insert;
  marcar() async{
    await connect();
    try {
      insert = await Variaveis.dbUser.conectar.query('insert into calendario (email, nome, dia, mes) values (?, ?, ?, ?)', [Logar.email, Logar.usuario, MarcarConsulta.dia, MarcarConsulta.mes]);
    } catch (e) {
      print(e);
    }
}
}