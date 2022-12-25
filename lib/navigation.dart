import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyNavigation()));
}

class MyNavigation extends StatelessWidget {
  const MyNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            child: Center(
              child: TextButton(
                child: Text('$index Items'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Popup(ins: index);
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class Popup extends StatelessWidget {
  const Popup({super.key, this.ins});
  final ins;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 150,
        width: 250,
        child: Center(
          child: Text('Index Number is $ins'),
        ),
      ),
    );
  }
}
