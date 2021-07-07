import 'package:flutter/material.dart';
import 'package:magnumodonto/Pages/Principal_Page.dart';
import 'package:magnumodonto/Shared/Variaveis.dart';

class MarcarConsulta extends StatefulWidget {
  static var dia;
  static var mes;

  @override
  _MarcarConsultaState createState() => _MarcarConsultaState();
}

class _MarcarConsultaState extends State<MarcarConsulta> {

  @override
  Widget build(BuildContext context) {
  marcar() async{
    await Variaveis.dbCalendario.marcar();
    await Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Principal(),),);
  }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(width: 210, height: 25, decoration: BoxDecoration(border: Border.all(color: Colors.black)), child: Text(Logar.usuario.toString()),),
          Text("Dia e Mes"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(child: DropdownButton<int>(
              value: MarcarConsulta.dia,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.blue,
              ),
              onChanged: (int? newValue) {
                setState(() {
                  MarcarConsulta.dia = newValue!;
                });
              },
              items: <int>[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,]
                  .map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                    );
                  }).toList()
                ),
              ),

              SizedBox(width: 5,),

                Container(child: DropdownButton<int>(
                  value: MarcarConsulta.mes,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      MarcarConsulta.mes = newValue!;
                    });
                  },
                  items: <int>[1,2,3,4,5,6,7,8,9,10,11,12]
                      .map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList()
                ),
          ),
              ],
            ),  
          ElevatedButton(onPressed: (){marcar();}, child: Text("Marcar Consulta")),
          ],
        ),
      ),
    );
  }
}