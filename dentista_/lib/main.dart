import 'package:flutter/material.dart';
import 'package:magnumodonto/Pages/Load_Page.dart';
import 'Login_Registro/Login_Register.dart';
import 'Shared/Variaveis.dart';

main() {
  runApp(
    MaterialApp(
      //home: Load_Page(),
      home: Login_(),
      title: Variaveis.title,
    )
  );
}