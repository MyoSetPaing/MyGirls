import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  List<String> imgList = [
    "img/linlae.jpg",
    "img/phonethiri.jpg",
    "img/sansan.png",
    "img/theingi.jpg",
    "img/thinzar.jpg"
  ];

  List<Girls> girls = [
    Girls("Thin Zar Lin Lae", "img/linlae.jpg"),
    Girls("Phone Thiri Kyaw", "img/phonethiri.jpg"),
    Girls("San San", "img/sansan.png"),
    Girls("Theingi Mg Mg", "img/theingi.jpg"),
    Girls("Thin Zar", "img/thinzar.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Lesson"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: <Widget>[
                  Image.asset(girls[index].img),
                  Text(girls[index].name)
                ],
              ),
            );
          },
          itemCount: girls.length,
        ));
  }
}

class Girls {
  String name;
  String img;

  Girls(this.name, this.img);
}
