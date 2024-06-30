import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
   const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(255, 46, 25, 122),
           Color.fromARGB(255, 87, 59, 190),
        ),
      ),
    ),
  );
}
