import 'package:flutter/material.dart';

// ignore: camel_case_types
class Button_Year extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final OnPressed;
  // ignore: non_constant_identifier_names
  const Button_Year({ Key key,  @required this.OnPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.maxFinite,
      child: ElevatedButton(onPressed: OnPressed,
          child: Text("Next Year")),
    );
  }
}