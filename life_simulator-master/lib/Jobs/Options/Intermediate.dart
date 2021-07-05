import 'package:flutter/material.dart';
import 'package:life_simulator/Jobs/Widgets/Jobs_Widget.dart';
import '../../Shared/var_Controller.dart';
import '../jobs_bar.dart';
import '../variaveis/salary_variaveis.dart';

class Intermediate extends StatelessWidget {
  const Intermediate({ Key key }) : super(key: key);

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
            Jobs_Widget(OnPressed: (){var_Controller.salary = (Salary.salary1*13);}, TextSalary: (Salary.salary1*13), Texto: "Wash Cars L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = (Salary.salary2* 11);}, TextSalary: Salary.salary2 * 11, Texto: "Translator L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary3 * 11;}, TextSalary: Salary.salary3 * 11, Texto: "Marketing L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary4 * 11;}, TextSalary: Salary.salary4 * 11, Texto: "Seller L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary5 * 11;}, TextSalary: Salary.salary5* 11, Texto: "Mail Man L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary6 * 11;}, TextSalary: Salary.salary6 * 11, Texto: "Delivery Man L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary7 * 11;}, TextSalary: Salary.salary7 * 11, Texto: "Miner L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary8 * 11;}, TextSalary: Salary.salary8 * 11, Texto: "Garbage Man L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary9 * 11;}, TextSalary: Salary.salary9 * 11, Texto: "Developer L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary10 * 10;}, TextSalary: Salary.salary10 * 10, Texto: "Judge L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary11 * 10;}, TextSalary: Salary.salary11 * 10, Texto: "Electrician L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary12 * 10;}, TextSalary: Salary.salary12 * 10, Texto: "Engineer L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary13 * 10;}, TextSalary: Salary.salary13 * 10, Texto: "Software Engineer L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary14 * 10;}, TextSalary: Salary.salary14 * 10, Texto: "Builder L2", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary15 = 135000;}, TextSalary: Salary.salary15 = 135000, Texto: "Lawyer L2", ),
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