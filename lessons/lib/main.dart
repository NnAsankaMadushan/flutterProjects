import 'package:flutter/material.dart';
import 'package:lessons/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: GradientContainer(colors: [Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 4, 82, 105),],))));
}


