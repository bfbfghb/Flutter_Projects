import 'package:flut_os/Home/Home.dart';
import 'package:flutter/material.dart';

class Battle_Naval extends StatefulWidget {
  const Battle_Naval({ Key? key }) : super(key: key);

  @override
  _Battle_NavalState createState() => _Battle_NavalState();
}

class _Battle_NavalState extends State<Battle_Naval> {
  List espaco = ["","","","","","","","","","","","","","","","","","","","","","","","","",];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Home(),
          Padding(
            padding: const EdgeInsets.all(150.0),
            child: Container(
              width: 500,
              height: 510,
              color: Colors.white,
              child:
              Column(
                children: [
                  AppBar(
                    title: Text("Battle Naval"),
                    leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close, color: Colors.red,)),
                    ),
                  SizedBox(height: 4,),
                  Row(children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[0])), onTap: () => setState((){espaco[0] = "0";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[1])), onTap: () => setState((){espaco[1] = "1";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[2])), onTap: () => setState((){espaco[2] = "2";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[3])), onTap: () => setState((){espaco[3] = "3";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[4])), onTap: () => setState((){espaco[4] = "4";}),)),
                      ]),
                      Row(children: [
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[5])), onTap: () => setState((){espaco[5] = "5";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[6])), onTap: () => setState((){espaco[6] = "6";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[7])), onTap: () => setState((){espaco[7] = "7";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[8])), onTap: () => setState((){espaco[8] = "8";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[9])), onTap: () => setState((){espaco[9] = "9";}),)),
                  ],),
                  Row(children: [
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[10])), onTap: () => setState((){espaco[10] = "10";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[11])), onTap: () => setState((){espaco[11] = "11";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[12])), onTap: () => setState((){espaco[12] = "12";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[13])), onTap: () => setState((){espaco[13] = "13";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[14])), onTap: () => setState((){espaco[14] = "14";}),)),
                  ],),
                  Row(children: [
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[15])), onTap: () => setState((){espaco[15] = "15";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[16])), onTap: () => setState((){espaco[16] = "16";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[17])), onTap: () => setState((){espaco[17] = "17";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[18])), onTap: () => setState((){espaco[18] = "18";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[19])), onTap: () => setState((){espaco[19] = "19";}),)),
                  ],),
                  Row(children: [
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[20])), onTap: () => setState((){espaco[20] = "20";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[21])), onTap: () => setState((){espaco[21] = "21";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[22])), onTap: () => setState((){espaco[22] = "22";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[23])), onTap: () => setState((){espaco[23] = "23";}),)),
                        Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: GestureDetector(child: Center(child: Text(espaco[24])), onTap: () => setState((){espaco[24] = "24";}),)),
                  ],),
                ],
              ),
            ),
          ),
        ],)
      )
    );
  }
}