import 'package:flutter/material.dart';

class Alertdialog extends StatelessWidget {
  final title;
  final conteudoText;

  const Alertdialog({Key key, @required this.title, @required this.conteudoText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    showDialog({BuildContext context, AlertDialog Function(BuildContext context) builder}){
    return showDialog(context: (context ), builder: (BuildContext context){
        return AlertDialog(
          title: Text(title), content: Text(conteudoText), actions: [ ElevatedButton(onPressed: (){Navigator.pop(context);}, 
        child: Text("Close"))],
        );
      });
    }
  }
}