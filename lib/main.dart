import 'package:flutter/material.dart';
import 'package:pos_coffe/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 87, 14, 212)),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: "POS Coffe Application",
      ),
    );
  }
}
