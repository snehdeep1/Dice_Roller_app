import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get regular => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aapname',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          fontFamily: regular),
    );
  }
}
