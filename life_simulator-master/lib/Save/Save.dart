import '../Shared/var_Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Save{
  // ignore: non_constant_identifier_names
  void Salvar() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("year", var_Controller.year);
    prefs.setDouble("money", var_Controller.money);
    prefs.setInt("salary", var_Controller.salary);
    prefs.setBool("empcriada", Empresa.empcriada);
    prefs.setDouble("valor", Empresa.valor);
    prefs.setString("nome", Empresa.nome);
    prefs.setStringList("homeUpdates", var_Controller.homeUpdates);
    prefs.setInt("machines", Empresa.machines);
    prefs.setDouble("bitcoin", Empresa.bitcoin);
  }
  // ignore: non_constant_identifier_names
  void Carregar() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var_Controller.year = prefs.getInt("year") ?? 2021;
    var_Controller.money = prefs.getDouble("money") ?? 1100;
    var_Controller.salary = prefs.getInt("salary") ?? 750;
    Empresa.empcriada = prefs.getBool("empcriada") ?? false;
    Empresa.valor = prefs.getDouble("valor") ?? 0;
    Empresa.nome = prefs.getString("nome") ?? "";
    var_Controller.homeUpdates = prefs.getStringList("homeUpdates") ?? ["Nasceu em ${var_Controller.year}"];
    Empresa.machines = prefs.getInt("machines") ?? 0;
    Empresa.bitcoin = prefs.getDouble("bitcoin") ?? 0;
  }
  // ignore: non_constant_identifier_names
  void New() async{
    var_Controller.year = 2021;
    var_Controller.money = 1100;
    var_Controller.salary = 750;
    Empresa.empcriada = false;
    Empresa.nome = "";
    Empresa.valor = 0;
    Empresa.machines = 0;
    Empresa.bitcoin = 0;
    var_Controller.homeUpdates = ["Nasceu em ${var_Controller.year}"];
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("year", var_Controller.year);
    prefs.setDouble("money", var_Controller.money);
    prefs.setInt("salary", var_Controller.salary);
    prefs.setBool("empcriada", Empresa.empcriada);
    prefs.setDouble("valor", Empresa.valor);
    prefs.setString("nome", Empresa.nome);
    prefs.setStringList("homeUpdates", var_Controller.homeUpdates);
    prefs.setInt("machines", Empresa.machines);
    prefs.setDouble("bitcoin", Empresa.bitcoin);
  }
}