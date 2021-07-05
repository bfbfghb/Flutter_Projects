import 'package:flutter/material.dart';
import '../../Shared/var_Controller.dart';

// ignore: camel_case_types
class Jobs_Widget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const Jobs_Widget({ Key key, @required this.OnPressed, @required this.Texto, @required this.TextSalary}) : super(key: key);
  // ignore: non_constant_identifier_names
  final OnPressed;
  // ignore: non_constant_identifier_names
  final Texto;
  // ignore: non_constant_identifier_names
  final TextSalary;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        width: 120,
        height: var_Controller.jobButtonHeight,
        child: ElevatedButton(onPressed: OnPressed, 
        child: Column(children: [Text(Texto, style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 15,),
        Text("Salary: ${var_Controller.formatter.format(TextSalary)}")]), style: ElevatedButton.styleFrom(primary: Colors.blueGrey),),
      ),
    );
  }
}