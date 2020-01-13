import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> names = ["Theingi Mg Mg"];

  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Exercise"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: nameController,
            decoration: InputDecoration(hintText: "Enter name"),
          ),
          RaisedButton(
            onPressed: () {
              String name = nameController.text;

              setState(() {
                names.add(name);
              });
            },
            child: Text("Add"),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    child: Text(
                      names[index],
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.all(10.0),
                    color: Colors.pink,
                  ),
                );
              },
              itemCount: names.length,
            ),
          )
        ],
      ),
    );
  }
}
