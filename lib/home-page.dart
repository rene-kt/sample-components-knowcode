import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

const button = Key('button');
const imageView = Key('image-view');
const imageButton = Key('image-button');
const editText = Key('edit-text');
const checkboxKey = Key('checkbox');

class _HomePageState extends State<HomePage> {
  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample componenets KnowCode"),
          backgroundColor: Color.fromRGBO(133, 36, 209, 1.0),
        ),
        body: SingleChildScrollView(
            child: Stack(children: [
          Container(
              height:
                  800), // This line is responsible to set a height to the whole screen
          // cuz as it's using absolute positions, it also needs to set an absolute height for the screen

          //Button
          Positioned(
              left: 20,
              top: 20,
              // In flutter, you cannot especify a size for some widgets directly,
              // so you'll have to wrap into a element who has this attribute, such as the Container()
              child: Container(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(
                    key: button,
                    child: Text("Button, click here!"),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(133, 36, 209, 1.0),
                        textStyle: TextStyle(
                          backgroundColor: Color.fromRGBO(133, 36, 209, 1.0),
                          fontFamily:
                              'Arial', // you need to import these fonts in the pubsec.yaml, as the same way as images
                          fontSize: 25,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                        )),
                    onPressed: () {},
                  ))),
          // ImageButton
          Positioned(
              left: 20,
              top: 100,
              child: Container(
                  height: 200,
                  width: 200,
                  child: IconButton(
                    key: imageButton,
                    icon: Image.asset("lib/assets/knowcode.jpg"),
                    onPressed: () {},
                  ))),
          // ImageView
          Positioned(
              left: 20,
              top: 300,
              child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("lib/assets/totalcross.jpg",
                      key: imageView))),
          //EditText
          Positioned(
              left: 20,
              top: 500,
              child: Container(
                  height: 60,
                  width: 300,
                  child: TextField(
                    key: editText,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Type your text",
                    ),
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ))),
          // Checkbox
          Positioned(
              left: 20,
              top: 600,
              child: Container(
                  height: 60,
                  width: 300,
                  child: CheckboxListTile(
                    key: checkboxKey,
                    title: Text(
                      "Checkbox title",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),

                    value:
                        checkbox, // It's necessary create a bool value to verify if the checkbox is pressed or not, check the line 11
                    checkColor: Color.fromRGBO(255, 255, 255, 1), // icon color
                    activeColor:
                        Color.fromRGBO(133, 36, 209, 1.0), // square color
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
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    tileColor:
                        Color.fromRGBO(255, 255, 255, 1), // background color
                    selectedTileColor: Color.fromRGBO(
                        0, 0, 0, 1), // background color when it's selected
                  ))),
        ])));
  }
}
