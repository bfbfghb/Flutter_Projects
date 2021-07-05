import 'package:flutter/material.dart';
import 'package:life_simulator/Shared/var_Controller.dart';

// ignore: camel_case_types
class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

// ignore: camel_case_types
class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: var_Controller.homeUpdates.length, itemBuilder: (context, index){
      return Container(
        child: Center(child: Text(var_Controller.homeUpdates[index])),);
    });
  }
}
