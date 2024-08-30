import 'package:flutter/material.dart';

class texteditController extends StatefulWidget {
  const texteditController({super.key});

  @override
  State<texteditController> createState() => _texteditControllerState();
}

class _texteditControllerState extends State<texteditController> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(result),
            SizedBox(height: 50),
            SizedBox(
              width: 100,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Sava',
                ),
                onChanged: (text) {
                  setState(() {
                    result = text;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
