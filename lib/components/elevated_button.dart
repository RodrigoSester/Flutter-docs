import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ElevatedButtonPage extends StatefulWidget {
  const ElevatedButtonPage({super.key});

  @override
  State<ElevatedButtonPage> createState() => _ElevatedButtonPageState();
}

class _ElevatedButtonPageState extends State<ElevatedButtonPage> {
  MaterialStateProperty<Color?> color =
      MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.hovered)) {
        return Colors.black;
      }

      return null;
    },
  );

  MaterialStateProperty<Color?> shadow =
      MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return Colors.red;
      }
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('puta merda'),
              onLongPress: () => {print('Pressionou demais')},
              onHover: (value) => {print('hover')},
              style: ButtonStyle(
                animationDuration: Duration(seconds: 2),
                shadowColor: shadow,
                backgroundColor: color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
