import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    title: 'Tab',
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _bottomState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Here is ... ${_bottomState}'),
      ),
      body: [
        Home(),
        Shop(),
      ][_bottomState],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomState,
        onTap: (value) {
          setState(() {
            _bottomState = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              size: 30.0,
            ),
            label: '쇼핑',
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      color: Colors.red,
      child: ElevatedButton(
        child: Text('상세설명'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigoAccent,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetail(),
            ),
          );
        },
      ),
    );
  }
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      color: Colors.blue,
      child: ElevatedButton(
        child: Text("쇼핑 상세 페이지"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShopDetail(),
            ),
          );
        },
      ),
    );
  }
}

class HomeDetail extends StatelessWidget {
  const HomeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('상세 페이지'),
      ),
      body: Center(
        child: Text("홈 상세 페이지"),
      ),
    );
  }
}

class ShopDetail extends StatelessWidget {
  const ShopDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('상세 페이지'),
      ),
      body: Center(
        child: Text("쇼핑 상세 페이지"),
      ),
    );
  }
}
