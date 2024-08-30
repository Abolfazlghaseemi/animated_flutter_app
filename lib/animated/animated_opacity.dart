import 'package:flutter/material.dart';

class animatedOpacity extends StatefulWidget {
  const animatedOpacity({super.key});

  @override
  State<animatedOpacity> createState() => _animatedOpacityState();
}

class _animatedOpacityState extends State<animatedOpacity> {
  double opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: opacity,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (opacity == 0) {
                    opacity = 1;
                  } else {
                    opacity = 0;
                  }
                });
              },
              child: Text('opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
