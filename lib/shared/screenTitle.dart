import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 1000),
      curve: Curves.bounceInOut,
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double val, Widget? child){
        return Padding(padding: EdgeInsets.only(top: val*50), child: Opacity(
            opacity: val,
            child: child),);
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
