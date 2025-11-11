import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer.blue({super.key})
    : color1 = const Color.fromARGB(255, 78, 13, 151),
      color2 = const Color.fromARGB(255, 107, 15, 168);

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color1, color2],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
      ),
      child: Center(
        child: StartScreen(),
      ),
    );
  }
}
