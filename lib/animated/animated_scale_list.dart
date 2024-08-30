import 'package:flutter/material.dart';

class animatedScaleList extends StatefulWidget {
  const animatedScaleList({super.key});

  @override
  State<animatedScaleList> createState() => _animatedScaleListState();
}

class _animatedScaleListState extends State<animatedScaleList> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  margin: EdgeInsets.all(20),
                  duration: Duration(microseconds: 900),
                  height: 100,
                  width: (index == _selectedIndex) ? 100 : 50,
                  color: (index == _selectedIndex) ? Colors.blue : Colors.green,
                  child: AnimatedScale(
                    scale: (index == _selectedIndex) ? 1 : 0,
                    duration: Duration(seconds: 1),
                    child: Text('ایفون'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
