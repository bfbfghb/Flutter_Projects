import 'package:flut_os/Home/Home.dart';
import 'package:flutter/material.dart';

class Firefox extends StatefulWidget {
  const Firefox({ Key? key }) : super(key: key);

  @override
  _FirefoxState createState() => _FirefoxState();
}

class _FirefoxState extends State<Firefox> {

  navegador(){
    return Padding(
      padding: const EdgeInsets.all(150.0),
      child: Container(
        width: 750,
        height: 750,
        color: Colors.white,
        child: Column(children: [
          AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close, color: Colors.red,)),
            title: Text("Firefox"),
          ),
          Row(children: [
            IconButton(onPressed: null, icon: Icon(Icons.arrow_left)),
            IconButton(onPressed: null, icon: Icon(Icons.arrow_right)),
            //TextField(onChanged: (value) {},),
          ]),
        ],),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Home(),
            navegador(),
          ],
        ),
      ),
    );
  }
}