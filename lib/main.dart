import 'package:flutter/material.dart';
import 'package:miprimeraapp8/login.dart';
import 'package:miprimeraapp8/principal.dart';

void main() {
  runApp(const MyApp());
}

///Clases sin estado o sin cambio de estado
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}

