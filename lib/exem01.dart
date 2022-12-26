import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: iContent(),
    ),
  );
}

class iContent extends StatefulWidget {
  const iContent({super.key});

  @override
  State<iContent> createState() => _iContentState();
}

class _iContentState extends State<iContent> {
  List userName = ['김성헌', '정애란'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: ListView.builder(
        itemCount: userName.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(userName[index].toString()),
          );
        },
      ),
    );
  }
}
