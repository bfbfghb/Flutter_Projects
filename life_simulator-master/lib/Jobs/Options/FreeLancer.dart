import 'dart:math';
import 'package:flutter/material.dart';
import 'package:life_simulator/Jobs/Widgets/Jobs_Widget.dart';
import 'package:life_simulator/Shared/alertDialog.dart';
import '../../Shared/var_Controller.dart';
import '../jobs_bar.dart';
import '../variaveis/salary_variaveis.dart';

class FreeLancer extends StatelessWidget {
  var random = Random();
  var listtitle = ['lumberjack','painter','developer','engineer','software engineer','designer','software developer','logo designer','interior designer','graphic designer','translator','Marketing','Writer','Author','Video Edition',"Audio Editor",'Image Edition',"Driver","Lawyer","Seller",'Dancer','Clerk','store attendant','DeliveryMan','CopyWriter','Account Executive'];
  var listsalary = [350, 750, 500, 350, 780, 2750, 400, 250, 750, 359, 978, 900, 128, 70, 800, 600, 500, 400,300,200,100,50, 754,950, 375,735];
  @override
  Widget build(BuildContext context) {
  int i = random.nextInt(11);
  if(i == 0){
    i = 1;
  }
  var a = i;
  var b = i;
    print(i);
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: ListView.builder(itemCount: 15, itemBuilder: (context, index){
          return ListTile(title: Jobs_Widget(OnPressed: (){var_Controller.money += listsalary[i+index]; return Alertdialog(conteudoText: "você recebeu \$${listsalary[i+index]}", title: "Freelancer Jobs",);}, Texto: listtitle[a++], TextSalary: listsalary[b++],),);
        }
        ,),

        bottomSheet: Container(
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => job_Bar()));var_Controller.save.Salvar();}, child: Text("Back"),),
        ),
      ),
    );
  }
}