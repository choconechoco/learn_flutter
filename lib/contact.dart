import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'iContact',
      home: MyContact(),
    ),
  );
}

class MyContact extends StatefulWidget {
  const MyContact({super.key});

  @override
  State<MyContact> createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {
  List<List<dynamic>> purchaseOffice = [];

  void _loadCSV() async {
    final _rawData = await rootBundle.loadString('./assets/CSV11.csv');
    List<List<dynamic>> _listData = CsvToListConverter().convert(_rawData);
    purchaseOffice = _listData;
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
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: ListView.builder(
        itemCount: purchaseOffice.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('$index'),
            ),
            title: Text(
              purchaseOffice[index][1].toString(),
            ),
            subtitle: Text(
              purchaseOffice[index][2].toString(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return EditWindow(productInfo: purchaseOffice[index]);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class EditWindow extends StatelessWidget {
  const EditWindow({super.key, this.productInfo});
  final productInfo;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 300,
        child: Column(
          children: [
            for (var i in productInfo) Text(i.toString()),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print(productInfo.runtimeType);
                  },
                  child: Text('Save'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Exit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
