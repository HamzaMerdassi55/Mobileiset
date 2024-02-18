import 'package:flutter/material.dart';
import 'package:flutter_application_1/Auth/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quick App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(237, 12, 191, 161)),
          useMaterial3: true,
        ),
        home: MyHomePage());
  }
}
