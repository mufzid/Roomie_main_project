import 'package:flutter/material.dart';
import 'package:romiee_mainproject/src/ui/screens/home_screen.dart';
import 'package:romiee_mainproject/src/ui/screens/next_page/enquire_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
