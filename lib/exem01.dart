import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

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
  List userName = [];
  getPermission() async {
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      var contacts = await ContactsService.getContacts();
      print(contacts[0].givenName);
    } else if (status.isDenied) {
      print('Deind');
      Permission.contacts.request();
    }
  }

  void userAdd(inputData) {
    setState(() {
      userName.add(inputData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
        actions: [
          IconButton(
            onPressed: () {
              getPermission();
            },
            icon: Icon(Icons.contacts),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: userName.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('./assets/profile_woman.png'),
            ),
            title: Text(userName[index].toString()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AddUser(userAdd: userAdd);
            },
          );
        },
      ),
    );
  }
}

class AddUser extends StatelessWidget {
  AddUser({super.key, this.userAdd});
  final userAdd;
  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 300,
        child: Column(
          children: [
            TextField(
              controller: inputData,
            ),
            ElevatedButton(
              child: Text('추가'),
              onPressed: () {
                userAdd(inputData.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
