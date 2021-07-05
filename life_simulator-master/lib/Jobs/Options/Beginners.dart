import 'package:flutter/material.dart';
import 'package:life_simulator/Jobs/Widgets/Jobs_Widget.dart';
import 'package:life_simulator/Shared/var_Controller.dart';
import '../variaveis/salary_variaveis.dart';
import '../jobs_bar.dart';

class Beginners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: var_Controller.backGroundColor,
      home: Scaffold(
        body: ListView(
          children: [
            SizedBox(height: 15,),
            Center(child: Text("Jobs: 15", style: TextStyle(fontSize: 27, color: Colors.amber),)),
            SizedBox(height: 15,),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary1;}, TextSalary: Salary.salary1, Texto: "Wash Cars", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary2;}, TextSalary: Salary.salary2, Texto: "Translator", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary3;}, TextSalary: Salary.salary3, Texto: "Marketing", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary4;}, TextSalary: Salary.salary4, Texto: "Seller", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary5;}, TextSalary: Salary.salary5, Texto: "Mail Man", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary6;}, TextSalary: Salary.salary6, Texto: "Delivery Man", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary7;}, TextSalary: Salary.salary7, Texto: "Miner", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary8;}, TextSalary: Salary.salary8, Texto: "Garbage Man", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary9;}, TextSalary: Salary.salary9, Texto: "Developer", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary10;}, TextSalary: Salary.salary10, Texto: "Judge", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary11;}, TextSalary: Salary.salary11, Texto: "Electrician", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary12;}, TextSalary: Salary.salary12, Texto: "Engineer", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary13;}, TextSalary: Salary.salary13, Texto: "Software Engineer", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary14;}, TextSalary: Salary.salary14, Texto: "Builder", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary15 = 13000;}, TextSalary: Salary.salary15 = 13000, Texto: "Lawyer", ),
            SizedBox(height: 30,)
          ],
        ),
        bottomSheet: Container(
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => job_Bar()));var_Controller.save.Salvar();}, child: Text("Back"),),
        ),
      ),
    );
  }
}