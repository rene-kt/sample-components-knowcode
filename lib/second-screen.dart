import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample components KnowCode"),
          backgroundColor: Color.fromRGBO(133, 36, 209, 1.0),
        ),
        body: SingleChildScrollView(
            child: Stack(children: [
          Container(height: 800),
          Positioned(
              left: 20,
              top: 20,
              child: Text(
                "This is a simple text",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(133, 36, 209, 1.0),
                    wordSpacing: 1.0),
              )),
        ])));
  }
}
