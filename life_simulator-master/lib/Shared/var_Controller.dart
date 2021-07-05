import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:life_simulator/Save/Save.dart';

// ignore: camel_case_types
class var_Controller{
  static int year;
  static var money;
  static var salary;
  static var ano = year;
  static var moneytext = money;
  static var salarytext = salary;  
  static NumberFormat formatter = NumberFormat.simpleCurrency();
  

  static int page = 0;
  static ThemeData backGroundColor = ThemeData.dark();
  static double heightSpace = 50;
  static double jobHeight = 15;
  static double jobButtonHeight = 80;
  static double jobButtonWidth = double.maxFinite;
  static Save save = new Save();

  static List<String> homeUpdates = ["Nasceu em $year"];
}

class Empresa{
  static double bitcoin = 0;
  static double valuebitcoin = 7000;
  static int machines = 0;
  static double valuemachines = 2000;
  static String nome;
  static double valor;
  static double lucrar;
  static var random = Random();
  static bool empcriada = false;
  static int entrada = 0;
}