import 'package:flut_os/save/Save.dart';
import 'package:intl/intl.dart';


class Variaveis{
  static String title = "Flut-OS";
  static Save save = new Save();
  static var ImageBackground = "assets/wallpaper.jpg";
  static String date = DateFormat.yMMMd().format(DateTime.now());
  static String hour = DateFormat.Hm().format(DateTime.now());
}

class User{
  static String name = "";
  static String password = "";
  static bool newUser = true;
}