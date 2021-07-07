import 'package:flutter/material.dart';
import 'package:magnumodonto/Pages/LoadItens_Page.dart';
import 'package:magnumodonto/Pages/MarcarConsulta_Page.dart';
import 'package:magnumodonto/Shared/Variaveis.dart';

class Principal extends StatefulWidget {
  const Principal({ Key? key }) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  drawerFunc(){
    return Drawer(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Text("Menu", style: TextStyle(fontSize: 25),),
              IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close, color: Colors.red,)),
          ],),
          SizedBox(height: 25),
          TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => MarcarConsulta(),),);
          }, child: Text("Marcar consulta")),
          TextButton(onPressed: (){}, child: Text("Fale conosco")),
          // TextButton(onPressed: (){}, child: Text("Ver horarios")),
          // TextButton(onPressed: (){}, child: Text("Ver suas consultas")),
          TextButton(onPressed: (){}, child: Text("Conheça os Tratamentos")),
          TextButton(onPressed: (){}, child: Text("sobre nós")),
      ],),
    );
  }
  @override
  Widget build(BuildContext context) {
    for (var UserName in Logar.results!) {
      Logar.usuario = UserName[0];
    }
    print(Logar.usuario);
    return Scaffold(
      drawer: drawerFunc(),
      appBar: AppBar(title: Text(Variaveis.title),),
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 25,),
          Text("Suas Consultas", style: TextStyle(fontSize: 25),),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(height: double.maxFinite, width: double.maxFinite, 
            child: LoadItens()),
          ),
        ],),
      ),
    );
  }
}