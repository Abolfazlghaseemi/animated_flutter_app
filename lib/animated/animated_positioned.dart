import 'package:flutter/material.dart';

class animatedPositioned extends StatefulWidget {
  const animatedPositioned({super.key});

  @override
  State<animatedPositioned> createState() => _animatedPositionedState();
}

class _animatedPositionedState extends State<animatedPositioned> {
  double top = 70;
  double left = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.easeInCirc,
            duration: Duration(microseconds: 500),
            top: top,
            left: left,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  top += 100;
                  left += 50;
                });
              },
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage('assets/images/khiyar.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
