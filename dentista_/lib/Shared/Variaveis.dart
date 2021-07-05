import 'package:galileo_mysql/galileo_mysql.dart';
import 'package:magnumodonto/DataBase/db.dart';

class Variaveis{
  static const title = "Magnum-Odonto";
  static final dbUser = new DBUser();
  static final dbAdmin = new DBAdmin();
  
}

class Logar{
  static Results ?results;
  static String ?usuario;
  static var senha;
  static var email;
  static var confsenha;
  static var verificarsenha;
  static var verificaremail;
  static Results ?carregaritem;
}

class DBLogin{
  static const host = "db4free.net";
  static const port = 3306;
  static const user = "bfbfghb";
  static const db = "fluttertestes";
  static const password = "168entra";
}