import 'package:flutter/material.dart';
// import 'package:learn_flutter/color_schemes.g.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List _widgetOptions = [
    Text(
      'Index 0 : Home',
      style: optionStyle,
    ),
    Text(
      'Index 1 : Subject',
      style: optionStyle,
    ),
    Text(
      'Index 2 : Group',
      style: optionStyle,
    ),
    Text(
      'Index 3 : My',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            text: 'Home Page start',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: '\n Choose',
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            backgroundColor: Colors.blueAccent,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subject),
            backgroundColor: Colors.blueAccent,
            label: 'Subject',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.psychology),
            backgroundColor: Colors.blueAccent,
            label: 'Group',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.blueAccent,
            label: 'My',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        onTap: _onItemTapped,
      ),
    );
  }
}
