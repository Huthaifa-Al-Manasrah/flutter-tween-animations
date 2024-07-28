import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({Key? key}) : super(key: key);

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _margin = 20;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        duration: Duration(seconds: 1),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _width = 50;
                });
              },
              child: Text('animate margin'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.purple;
                });
              },
              child: Text('animate color'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _width = 400;
                });
              },
              child: Text('animate width'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              },
              child: Text('animate opacity'),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text('hide me', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
