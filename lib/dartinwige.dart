import 'package:flutter/material.dart';

void main() => runApp(MyText());

class MyText extends StatefulWidget {
  const MyText({super.key});

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(),
      ),
    );
  }
}
