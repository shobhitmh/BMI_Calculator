import 'package:bmical_adv/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My new BMI Cal App',
      theme: ThemeData(brightness: Brightness.light),
      home: const homepage(),
    );
  }
}
