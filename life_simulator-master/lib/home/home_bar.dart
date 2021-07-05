import 'package:flutter/material.dart';
import 'package:life_simulator/Shared/Buttons_bar.dart';
import 'package:life_simulator/Shared/button_year.dart';
import 'package:life_simulator/Shared/var_Controller.dart';
import 'package:life_simulator/home/updates/Home_Page.dart';

// ignore: camel_case_types
class home_Bar extends StatefulWidget {
  @override
  _home_BarState createState() => _home_BarState();
}
// ignore: camel_case_types
class _home_BarState extends State<home_Bar> {
  // ignore: non_constant_identifier_names
  Update(){
    setState(() {
      var_Controller.year++;
      var_Controller.money += var_Controller.salary;
      var_Controller.ano = var_Controller.year;
      var_Controller.homeUpdates.add("\n${var_Controller.year}"); 
    });
    var_Controller.save.Salvar();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: var_Controller.backGroundColor,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(text: TextSpan(text:"Money: ${var_Controller.formatter.format(var_Controller.money)}")),
            RichText(text: TextSpan(text:"Salary: ${var_Controller.formatter.format(var_Controller.salary)}")),
            RichText(text: TextSpan(text: "Year: ${var_Controller.ano}")),
          ]),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: var_Controller.heightSpace,),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       RichText(text: TextSpan(text:"Money: ${var_Controller.formatter.format(var_Controller.money)}")),
                //       RichText(text: TextSpan(text:"Salary: ${var_Controller.formatter.format(var_Controller.salary)}")),
                //       RichText(text: TextSpan(text: "Year: ${var_Controller.ano}")),
                //     ]
                // ),
                SizedBox(height: 5,),
                Container(child: buttons_Bar()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: double.maxFinite, height: double.maxFinite, child: Home_Page(),),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Button_Year(OnPressed: Update),
      ),
    );
  }
}
