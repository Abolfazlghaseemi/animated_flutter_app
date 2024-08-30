import 'package:flutter/material.dart';

class animatedScale extends StatefulWidget {
  const animatedScale({super.key});

  @override
  State<animatedScale> createState() => _animatedScaleState();
}

class _animatedScaleState extends State<animatedScale> {
  double sclae = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedScale(
          scale: sclae,
          duration: Duration(seconds: 1),
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (sclae == 1) {
                  sclae++;
                } else {
                  sclae--;
                }
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
      ),
    );
  }
}
