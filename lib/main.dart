import 'package:flutter/material.dart';
import 'package:romiee_mainproject/src/ui/screens/next_page/card_listview_screen.dart';
import 'package:romiee_mainproject/src/ui/screens/next_page/card_view_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CardViewScreen());
  }
}
