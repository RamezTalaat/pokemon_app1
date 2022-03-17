import 'package:flutter/material.dart';
import 'package:pokemon/views/home_screen.dart';
import 'package:pokemon/views/pokemon_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context)=> home_screen()
      },
      initialRoute: '/',
    );
  }
}
