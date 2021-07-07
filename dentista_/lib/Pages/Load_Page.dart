import 'package:flutter/material.dart';
import 'package:magnumodonto/Admin/Login_Register_Admin/Admin_Login_Register.dart';
import 'package:magnumodonto/Usuario/Login_Registro/Login_Register.dart';

class Load_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  entrarUsuario(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login_(),),);
  }
  entrarAdmin(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LoginAdmin(),),);
  }  
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Magnum_Odonto", style: TextStyle(fontSize: 25),),
            SizedBox(height: 50),
            ElevatedButton(onPressed: entrarUsuario, child: Text("Entrar como Usuario")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: entrarAdmin, child: Text("Entrar como Admin")),
        ],),
      ),
    );
  }
}