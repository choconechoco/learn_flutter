import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Home Page',
            style: TextStyle(
              color: Colors.black87,
              letterSpacing: -0.7,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.notifications,
                color: Colors.green,
              ),
            ),
          ],
          elevation: 0.0,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Container(
              width: double.infinity,
              child: Text(
                'Choose your course right away',
                style: TextStyle(
                  fontSize: 9.0,
                ),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: SizedBox(
                height: 40.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelText:
                        'Search for your grade, course, training type ..',
                    labelStyle: TextStyle(
                      fontSize: 9.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Image.asset('./assets/facebook.png'),
                    ),
                    flex: 3,
                  ),
                  Flexible(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Image.asset('./assets/instagram.png'),
                    ),
                    flex: 3,
                  ),
                  Flexible(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Image.asset('./assets/linked.png'),
                    ),
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: double.infinity,
                      child: Text('Fackbook'),
                    ),
                    flex: 3,
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: double.infinity,
                      child: Text('Instagram'),
                    ),
                    flex: 3,
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: double.infinity,
                      child: Text('LinkedIn'),
                    ),
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Image.asset('./assets/wechat.png'),
                    ),
                    flex: 3,
                  ),
                  Flexible(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Image.asset('./assets/tweter.png'),
                    ),
                    flex: 3,
                  ),
                  Flexible(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Image.asset('./assets/apple.png'),
                    ),
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: double.infinity,
                      child: Text('WeChat'),
                    ),
                    flex: 3,
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: double.infinity,
                      child: Text('Tweit'),
                    ),
                    flex: 3,
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: double.infinity,
                      child: Text('Apple'),
                    ),
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recommended course',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'You may slso like',
                )
              ],
            ),
          ),
          Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.pink,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
            ),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.speaker,
            ),
            label: 'Talk',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.manage_accounts,
            ),
            label: 'My',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
            print(_selectedIndex);
          });
        },
      ),
    );
  }
}
