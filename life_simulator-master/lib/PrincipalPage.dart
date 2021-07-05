import 'package:flutter/material.dart';

import 'Menu/Menu.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
     home: Scaffold( 
       //backgroundColor: Var_Controller.backGroundColor,
      body: Center(child: Container(child: Menu())),
      bottomSheet: Row(
        children: [
          //Text("Created by Guilherme"),
          //Image.asset("../assets/images/Logo.png", width: 50, height: 50,),
        ],
      ),
     ),
    );
  }
}