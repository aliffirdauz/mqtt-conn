import 'package:flutter/material.dart';
import 'package:tutor_flutter_mobile/navigation.dart';
import 'package:tutor_flutter_mobile/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: NavigationPage(),
    );
  }
}
