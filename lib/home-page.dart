import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample componenets KnowCode"),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
            child: Stack(children: [
          Container(height: 800),
          Positioned(
              left: 20,
              top: 20,
              // In flutter, you cannot especify a size for some widgets directly,
              // so you'll have to wrap into a element who was this attribute, such as the Positioned()
              child: Container(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(
                    child: Text("Button, click here!"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        textStyle: TextStyle(
                          backgroundColor: Colors.purple,
                          fontFamily:
                              'Arial', // you need to import these fonts in the pubsec.yaml, as the same way as images
                          fontSize: 25,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                        )),
                    onPressed: () {},
                  ))),
          Positioned(
              left: 20,
              top: 100,
              child: Container(
                  height: 200,
                  width: 200,
                  child: IconButton(
                    icon: Image.asset("lib/assets/knowcode.jpg"),
                    onPressed: () {},
                  ))),
          Positioned(
              left: 20,
              top: 300,
              child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("lib/assets/totalcross.jpg"))),
          Positioned(
              left: 20,
              top: 500,
              child: Container(
                  height: 60,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Type your text",
                    ),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ))),
          Positioned(
              left: 20,
              top: 600,
              child: Container(
                  height: 60,
                  width: 300,
                  child: CheckboxListTile(
                    title: Text(
                      "Checkbox title",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),

                    value: checkbox,
                    checkColor: Colors.white, // icon color
                    activeColor: Colors.purple, // square color
                    onChanged: (newValue) {
                      setState(() {
                        checkbox = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    subtitle: Text(
                      "Checkbox subtitle",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: Colors.black),
                    ),
                    tileColor: Colors.white,
                    selectedTileColor: Colors.black,
                  ))),
        ])));
  }
}
