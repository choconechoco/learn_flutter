import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart' show rootBundle;

class MyListWidgets extends StatefulWidget {
  const MyListWidgets({super.key});

  @override
  State<MyListWidgets> createState() => _MyListWidgetsState();
}

class _MyListWidgetsState extends State<MyListWidgets> {
  List<List<dynamic>> _data = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString('./assets/seoul.csv');
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      _data = _listData;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadCSV();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(3),
            color: index == 0 ? Colors.amber : Colors.white,
            child: ListTile(
              leading: Text(_data[index][0].toString()),
              title: Text(_data[index][1].toString()),
              trailing: Text(
                _data[index][2].toString(),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _loadCSV,
      ),
    );
  }
}
