import 'package:flutter/material.dart';
import 'package:learn_flutter/color_schemes.g.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter APP"),
      ),
      body: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: 50,
          child: Text(
            'Hellow ... Flutter',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 121, 148, 237),
          ),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.shop,
                size: 30.0,
              ),
              Icon(
                Icons.login,
                size: 30.0,
              ),
              Icon(
                Icons.home,
                size: 30.0,
              ),
              Icon(
                Icons.search,
                size: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
