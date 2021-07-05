import 'package:flutter/material.dart';
import 'package:life_simulator/Jobs/Jobs_page.dart';
import 'package:life_simulator/Jobs/Widgets/Jobs_Widget.dart';
import '../../Shared/var_Controller.dart';
import '../jobs_bar.dart';
import '../variaveis/salary_variaveis.dart';

class Advanced extends StatelessWidget {
  const Advanced({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Job = jobs_Page();
    return MaterialApp(
      theme: var_Controller.backGroundColor,
      home: Scaffold(
        body: ListView(
          children: [
            SizedBox(height: 15,),
            Center(child: Text("Jobs: 15", style: TextStyle(fontSize: 27, color: Colors.amber),)),
            SizedBox(height: 15,),
            Jobs_Widget(OnPressed: (){var_Controller.salary = (Salary.salary1*142);Job.updatePage();}, TextSalary: (Salary.salary1*142), Texto: "Wash Cars L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = (Salary.salary2*75);Job.updatePage();}, TextSalary: Salary.salary2 * 75, Texto: "Translator L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary3 *40;Job.updatePage();}, TextSalary: Salary.salary3 * 40, Texto: "Marketing L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary4 * 39;Job.updatePage();}, TextSalary: Salary.salary4 * 39, Texto: "Seller L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary5 * 38;Job.updatePage();}, TextSalary: Salary.salary5* 38, Texto: "Writer L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary6 * 37;Job.updatePage();}, TextSalary: Salary.salary6 * 37, Texto: "Developer Mobile L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary7 * 36;Job.updatePage();}, TextSalary: Salary.salary7 * 36, Texto: "Miner L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary8 * 35;Job.updatePage();}, TextSalary: Salary.salary8 * 35, Texto: "Garbage Man L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary9 * 34;Job.updatePage();}, TextSalary: Salary.salary9 * 34, Texto: "Developer L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary10 * 33;Job.updatePage();}, TextSalary: Salary.salary10 * 33, Texto: "Judge L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary11 * 36;Job.updatePage();}, TextSalary: Salary.salary11 * 36, Texto: "Electrician L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary12 * 37;Job.updatePage();}, TextSalary: Salary.salary12 * 37, Texto: "Engineer L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary13 * 38;Job.updatePage();}, TextSalary: Salary.salary13 * 38, Texto: "Software Engineer L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary14 * 39;Job.updatePage();}, TextSalary: Salary.salary14 * 37, Texto: "Builder L3", ),
            Jobs_Widget(OnPressed: (){var_Controller.salary = Salary.salary15 = 500000;Job.updatePage();}, TextSalary: Salary.salary15 = 500000, Texto: "Lawyer L3", ),
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