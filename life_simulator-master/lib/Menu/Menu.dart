import 'package:flutter/material.dart';
import 'package:life_simulator/home/home_bar.dart';
import '../Shared/var_Controller.dart';
// ignore: must_be_immutable
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
 
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
  NewGame() async {
    var_Controller.save.New();
    await Future.delayed(Duration(milliseconds: 50));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => home_Bar()));
  }

  // ignore: non_constant_identifier_names
  Continue() async {
    var_Controller.save.Carregar();
    await Future.delayed(Duration(milliseconds: 50));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => home_Bar()));
  }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Text("Welcome!")),
          SizedBox(height: 15,),
          Container(
            width: 150,
            child: 
              ElevatedButton(onPressed: NewGame, child: Text("New Game")),
            ),
          SizedBox(height: 5,),
          Container(
            width: 150, 
            child: 
              ElevatedButton(onPressed: Continue, child: Text("Continue",))
            ),
          ],
    );
  }
}