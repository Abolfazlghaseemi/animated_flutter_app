import 'package:flutter/material.dart';

class animatedRotation extends StatefulWidget {
  const animatedRotation({super.key});

  @override
  State<animatedRotation> createState() => _animatedRotationState();
}

class _animatedRotationState extends State<animatedRotation> {
  double turns = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedRotation(
          curve: Curves.bounceIn,
          duration: Duration(seconds: 1),
          turns: turns,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (turns == 1) {
                  turns = 2;
                } else {
                  turns = 1;
                }
              });
            },
            child: SizedBox(
                width: 100,
                height: 100,
                child: Image(image: AssetImage('assets/images/khiyar.png'))),
          ),
        ),
      ),
    );
  }
}
