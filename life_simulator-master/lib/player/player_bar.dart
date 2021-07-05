import 'package:flutter/material.dart';
import 'package:life_simulator/Shared/Buttons_bar.dart';
import 'package:life_simulator/Shared/button_year.dart';
import 'package:life_simulator/Shared/var_Controller.dart';
import 'package:life_simulator/player/Player_Page.dart';

// ignore: camel_case_types
class player_Bar extends StatefulWidget {
  @override
  _player_BarState createState() => _player_BarState();
}
// ignore: camel_case_types
class _player_BarState extends State<player_Bar> {
  // ignore: non_constant_identifier_names
  // Update(){  
  //   setState(() {
  //     var_Controller.year++;
  //     var_Controller.money += var_Controller.salary;
  //     var_Controller.ano = var_Controller.year;
  //     var_Controller.homeUpdates.add("\n${var_Controller.year}"); 
  //   });
  //   var_Controller.save.Salvar();
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: var_Controller.backGroundColor,
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: var_Controller.heightSpace,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text: TextSpan(text:"Money: ${var_Controller.formatter.format(var_Controller.money)}")),
                      RichText(text: TextSpan(text:"Salary: ${var_Controller.formatter.format(var_Controller.salary)}")),
                      RichText(text: TextSpan(text: "Year: ${var_Controller.ano}")),
                    ]
                ),
                SizedBox(height: 5,),
                Container(child: buttons_Bar()),
                Container(child: Player_Page(),),
              ],
            ),
          ),
        ),
        // bottomSheet: Button_Year(OnPressed: Update),
      ),
    );
  }
}
