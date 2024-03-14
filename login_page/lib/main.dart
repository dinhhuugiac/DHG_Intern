import 'package:flutter/material.dart';
import 'package:login_page/pages/login_page_first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: LoginPageFirst(),),
    );
  }
}

