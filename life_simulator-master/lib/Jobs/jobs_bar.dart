import 'package:flutter/material.dart';
import 'package:life_simulator/Jobs/Jobs_page.dart';
import 'package:life_simulator/Shared/Buttons_bar.dart';
import 'package:life_simulator/Shared/button_year.dart';
import 'package:life_simulator/Shared/var_Controller.dart';


// ignore: camel_case_types
class job_Bar extends StatefulWidget {
  @override
  _job_BarState createState() => _job_BarState();
}
// ignore: camel_case_types
class _job_BarState extends State<job_Bar> {
  // ignore: non_constant_identifier_names

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
          child: Column(
            children: [
              SizedBox(height: var_Controller.heightSpace,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(text: TextSpan(text:"Money: ${var_Controller.formatter.format(var_Controller.money)}")),
                    RichText(text: TextSpan(text:"Salary: ${var_Controller.formatter.format(var_Controller.salary)}")),
                    RichText(text: TextSpan(text:"Year: ${var_Controller.ano}")),
                  ]
              ),
              SizedBox(height: 5,),
              Container(child: buttons_Bar()),
              //Container(child: Jobs_Page(),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: SingleChildScrollView(
              child: jobs_Page(),
              ),
              ),
            ],
          ),
        ),
        // bottomSheet: Button_Year(OnPressed: Update),
      ),
    );
  }
}
