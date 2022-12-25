import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: MyCSV(),
  ));
}

class MyCSV extends StatefulWidget {
  const MyCSV({super.key});

  @override
  State<MyCSV> createState() => _MyCSVState();
}

class _MyCSVState extends State<MyCSV> {
  List<List<dynamic>> _data = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString('./assets/CSV11.csv');
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    _data = _listData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CSV Loader'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(3),
              color: index == 0 ? Colors.blue : Colors.white,
              child: ListTile(
                leading: Text(_data[index][0].toString()),
                title: Text(_data[index][1].toString()),
                trailing: Text(_data[index][2].toString()),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _loadCSV();
          });
        },
        child: Icon(Icons.on_device_training),
      ),
    );
  }
}
