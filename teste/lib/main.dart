import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
main() {
  runApp(Teste());
}

class Teste extends StatefulWidget {
  
  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  var Tema;
  bool themedark;
  var icone;

  salvar() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("TemaDark", themedark);
  }
  carregar() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    themedark = prefs.getBool("TemaDark");
  }
  initState() {
    carregar();
    if(themedark == null){
      themedark = false;
    }
    if(themedark == true){
      setState(() {
        icone = Icons.toggle_on;
        Tema = ThemeData.dark();              
        print("Carregado $themedark");
      });
    }
    if(themedark == false){
      setState(() {
        icone = Icons.toggle_off;
        Tema = ThemeData.light(); 
        print("Carregado $themedark");
      });
    }
  super.initState();
  }


  themeVerificar(){
    if(themedark == true){
      setState(() {
        themedark = false;
        print("tema $themedark");
        Tema = ThemeData.light();
        icone = Icons.toggle_off;
        salvar();
      });
    }
    else if(themedark == false){
      setState(() {
        themedark = true;
        print("tema $themedark");
        Tema = ThemeData.dark();
        icone = Icons.toggle_on;
        salvar();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Tema,
      home: Scaffold(
        body: Column(
          children: [
            AppBar(
              title: Text("Teste"),
              actions: [
                IconButton(icon: Icon(icone), onPressed: (){themeVerificar(); salvar();})
            ],),
          ],
        )
      )
    );
  }
}