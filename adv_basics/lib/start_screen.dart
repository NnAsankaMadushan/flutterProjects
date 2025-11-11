import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(   //opacity
          opacity: 0.5,
          child: Image.asset('assets/images/quiz-logo.png', width: 300
      )),
        SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: (){},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 18),
            padding: const EdgeInsets.all(20),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"),
        ),
      ],
    );
  }
}