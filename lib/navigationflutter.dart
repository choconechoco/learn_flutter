import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigator',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _tabState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: [Text('Home Page'), Text('Shop Page')][_tabState],
      ),
      body: [Home(), Shop()][_tabState],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                size: 30.0,
              ),
              label: 'Shop'),
        ],
        currentIndex: _tabState,
        onTap: (value) {
          setState(() {
            _tabState = value;
          });
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: TextButton(
        child: Text('상세페이지'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeDetailPage()));
        },
      ),
    );
  }
}

class Shop extends StatelessWidget {
  Shop({super.key});
  String message = '전달된 자료 입니다.';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: TextButton(
        child: Text('샵 상세페이지'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ShopDetailPage(message: message)));
        },
      ),
    );
  }
}

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Derail Page'),
      ),
      body: Center(
        child: TextButton(
          child: Text('홈 상세 페이지'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class ShopDetailPage extends StatelessWidget {
  const ShopDetailPage({super.key, this.message});
  final message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Derail Page'),
      ),
      body: Center(
        child: TextButton(
          child: Text(message.toString()),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
