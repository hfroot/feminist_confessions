import 'package:feministconfessions/screens/new_confession_screen.dart';
import 'package:feministconfessions/themes/yayoi_kusama_my_heart.dart';
import 'package:feministconfessions/screens/confessions_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FeministConfessionsApp());
}

class FeministConfessionsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'feminist confessions',
      theme: MyTheme,
      initialRoute: ConfessionsScreen.id,
      routes: {
        ConfessionsScreen.id: (context) => ConfessionsScreen(),
        NewConfessionScreen.id: (context) => NewConfessionScreen(),
      },
    );
  }
}
