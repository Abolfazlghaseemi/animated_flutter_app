import 'package:flutter/material.dart';

class animatedSwitcher extends StatefulWidget {
  const animatedSwitcher({super.key});

  @override
  State<animatedSwitcher> createState() => _animatedSwitcherState();
}

class _animatedSwitcherState extends State<animatedSwitcher> {
  bool isSwitchTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        setState(() {
          isSwitchTrue = !isSwitchTrue;
        });
      },
      child: Center(
        child: AnimatedSwitcher(
            duration: Duration(seconds: 1),
            switchInCurve: Curves.decelerate,
            switchOutCurve: Curves.bounceOut,
            child: (isSwitchTrue)
                ? Image(
                    image: AssetImage('assets/images/khiyar.png'),
                    key: Key('1'))
                : Image(
                    image: AssetImage('assets/images/gozhe.png'),
                    key: Key('2'),
                  )),
      ),
    ));
  }
}
