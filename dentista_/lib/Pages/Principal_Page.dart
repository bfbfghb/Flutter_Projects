import 'package:flutter/material.dart';
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
          TextButton(onPressed: (){}, child: Text("Marcar consulta")),
          TextButton(onPressed: (){}, child: Text("Ver horarios")),
          TextButton(onPressed: (){}, child: Text("Ver suas consultas")),
          TextButton(onPressed: (){}, child: Text("Conheça os Tratamentos")),
          TextButton(onPressed: (){}, child: Text("sobre nós")),
      ],),
    );
  }
  @override
  Widget build(BuildContext context) {
    List carregaritens = Logar.carregaritem!.toList();

    // carregaritens() async{
    //   try {
    //   Logar.carregaritem = await Variaveis.dbUser.conectar.query('SELECT nome from usuarios');
    //     print(Logar.carregaritem);
    //   } catch (e) {
    //     print(e);
    //   }
    // }
    // carregaritens();
    Logar.usuario = Logar.results!.first.values.toString();
    print(Logar.usuario);
    return Scaffold(
      drawer: drawerFunc(),
      appBar: AppBar(title: Text(Variaveis.title)),
      body: Column(
        children: [
        Text("Seja bem vindo ${Logar.usuario}"),
        ListView.builder(itemCount: carregaritens.length, itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: double.maxFinite, height: 500, child: Text("Olá ${carregaritens[index]}"),),
          );
        })
      ],),
    );
  }
}