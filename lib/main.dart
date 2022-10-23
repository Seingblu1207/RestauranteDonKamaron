import 'package:flutter/material.dart';
import 'package:prueba/vistas/welcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Don Camaron",
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const Scaffold(
          backgroundColor: Color(0xff0B2B40),
          body: LogIn(),
        ));
  }
}
