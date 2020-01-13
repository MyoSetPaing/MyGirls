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

  var pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Lesson"),
        ),
        body: PageView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Image.asset(girls[index].img,height: 500,),
                Text(girls[index].name)
              ],
            );
          },
          itemCount: girls.length,
          scrollDirection: Axis.horizontal,
          controller: pageController,
        ));
  }
}

class Girls {
  String name;
  String img;

  Girls(this.name, this.img);
}
