import 'dart:io';

import 'package:flutter/material.dart';
import 'package:magnumodonto/Login_Registro/Login_Register.dart';
import 'package:magnumodonto/Pages/Principal_Page.dart';

class Load_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  atualizar() async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login_(),),);
  }
  
    atualizar();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Magnum_Odonto"),
          SizedBox(height: 50),
          Center(child: CircularProgressIndicator()),
      ],),
    );
  }
}