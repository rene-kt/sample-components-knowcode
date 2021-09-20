import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample componenets KnowCode"),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              Container(
                  width: 300,
                  height: 150,
                  padding: EdgeInsets.all(50),
                  child: ElevatedButton(
                    child: Text("Button, click here!"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    onPressed: () {},
                  )),
              Container(
                  width: 300,
                  height: 150,
                  child: IconButton(
                    icon: Image.network(
                        "https://avatars.githubusercontent.com/u/10406833?s=200&v=4"),
                    onPressed: () {},
                  )),
              Container(
                  width: 300,
                  height: 150,
                  child: Image.network(
                      "https://avatars.githubusercontent.com/u/79103847?s=200&v=4")),
              Container(width: 200, height: 150, child: TextField()),
            ])))));
  }
}
