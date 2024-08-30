import 'package:animated_flutter_app/animated/animated_opacity.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Applicatoon());
}

class Applicatoon extends StatefulWidget {
  const Applicatoon({super.key});

  @override
  State<Applicatoon> createState() => _AState();
}

class _AState extends State<Applicatoon> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: animatedOpacity(),
    );
  }
}
