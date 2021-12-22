import 'package:flutter/material.dart';
import 'package:homework_six/presentation/screens/home_screen.dart';
import 'package:homework_six/presentation/screens/wonders_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cars App',
      routes: {
        WondersScreen.routeName: (context) => WondersScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
