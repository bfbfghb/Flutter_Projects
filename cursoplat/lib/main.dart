import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

main(){
  runApp(Principal());
}
class Principal extends StatefulWidget {
  const Principal({ Key key }) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  VideoPlayerController _controller;

  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://youtu.be/dxytyRy-O1k')..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          children: [
            AppBar(title: Text("Teste"),),
            //Container(child: video,),]
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            }),
          ],
        ),
      ),
    );
  }
}