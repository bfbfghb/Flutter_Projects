import 'package:flutter/material.dart';
import 'package:life_simulator/Jobs/jobs_bar.dart';
import 'package:life_simulator/home/home_bar.dart';
import 'package:life_simulator/player/player_bar.dart';

// ignore: camel_case_types
class buttons_Bar extends StatefulWidget {
  @override
  _buttons_BarState createState() => _buttons_BarState();
}

// ignore: camel_case_types
class _buttons_BarState extends State<buttons_Bar> {
  final Color color_Var = Colors.black12;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(
          child: Container(color: color_Var, width: 100, child: ElevatedButton(style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(color_Var),
  ),
            onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) => home_Bar()));
          }, child: Text("Home",)))),
        Expanded(
            child: Container(color: color_Var, width: 100, child: ElevatedButton(style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(color_Var),
  ),
              onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (BuildContext context) => player_Bar()));
            }, child: Text("Player",)))),
      Expanded(child: Container(color: color_Var, width: 100,
          child: ElevatedButton(style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(color_Var),
  ),
            onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => job_Bar()));}, child: Text("Jobs",)))),
      Expanded(child: Container(color: color_Var, width: 100,
          child: ElevatedButton(style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(color_Var),
  ),
            onPressed: () {}, child: Text("Bank",)))),
      Expanded(child: Container(color: color_Var, width: 100,
          child: ElevatedButton(style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(color_Var),
  ),
            onPressed: () {}, child: Text("Mall",)))),
    ],
    );
  }
}
