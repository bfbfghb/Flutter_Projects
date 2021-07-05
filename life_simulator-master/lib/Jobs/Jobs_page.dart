import 'package:flutter/material.dart';
import 'package:life_simulator/Shared/var_Controller.dart';

import 'Options/Advanced.dart';
import 'Options/Beginners.dart';
import 'Options/FreeLancer.dart';
import 'Options/Intermediate.dart';
import 'Options/OwnBusiness.dart';
//Essa classe não está sendo utilizada\\
// ignore: camel_case_types
class jobs_Page extends StatefulWidget {
  updatePage(){
    var_Controller.homeUpdates.add("\n\t  Salary: ${var_Controller.salary} ");
  }
  @override
  _jobs_PageState createState() => _jobs_PageState();
}

// ignore: camel_case_types
class _jobs_PageState extends State<jobs_Page> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Text("Jobs",style: TextStyle(fontSize: 25, color: Colors.red),),
          ),
          SizedBox(height: var_Controller.jobHeight,),
            Container(
              width: var_Controller.jobButtonWidth,
              height: var_Controller.jobButtonHeight,
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => FreeLancer()));},
                child: Column(children: [Text("Free-Lancer", style: TextStyle(fontSize: 20),),Text("Salary: 3.500/ForEach")]), 
                style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                )
              ),
              Container(
                width: var_Controller.jobButtonWidth,
                height: var_Controller.jobButtonHeight,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Beginners()));},
                  child: Column(children: [Text("Beginner", style: TextStyle(fontSize: 20),),Text("Salary: 2.500/13.000/y")]), 
                  style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  )
              ),
              Container(
                width: var_Controller.jobButtonWidth,
                height: var_Controller.jobButtonHeight,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Intermediate()));},
                  child: Column(children: [Text("Intermediate", style: TextStyle(fontSize: 20),),Text("Salary: 15.000/157.000/y")]), 
                  style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  )
              ),
              Container(
                width: var_Controller.jobButtonWidth,
                height: var_Controller.jobButtonHeight,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Advanced()));},
                  child: Column(children: [Text("Advanced", style: TextStyle(fontSize: 20),),Text("Salary: 170.000/500.000/y")]), 
                  style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  )
              ),
              Container(
                width: var_Controller.jobButtonWidth,
                height: var_Controller.jobButtonHeight,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => OwnBusiness()));},
                  child: Column(children: [Text("Create Own Business", style: TextStyle(fontSize: 20),),Text("Salary: +50.000/y")]), 
                  style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  )
              ),
        ],
      ),
    );
  }
}
