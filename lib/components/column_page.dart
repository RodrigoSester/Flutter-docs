import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colorsLinear = [Colors.green, Colors.blueAccent];
    List<Color> colorsSweep = [Colors.red, Colors.brown];
    List<BoxShadow> boxShadow = [BoxShadow(color: Colors.orange)];

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(colors: colorsLinear),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.black,
            height: 100,
            width: 100,
            transform: Matrix4.rotationZ(0.2),
            foregroundDecoration: BoxDecoration(
              boxShadow: boxShadow,
              gradient: SweepGradient(colors: colorsSweep),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.yellow,
                style: BorderStyle.solid,
                width: 5,
                strokeAlign: StrokeAlign.inside,
              ),
            ),
          ),
          Container(
            color: Colors.pink,
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.green,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
