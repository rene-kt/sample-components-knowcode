import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int checkRadio = 0;
  double seekbarValue = 0.0;
  bool switchValue = false;
  List<String> spinnerValues = ["test1", "test2", "test3"];
  String spinnerSelectedValue = "test1";

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

          // EditText
          Positioned(
              left: 20,
              top: 20,
              child: Container(
                  height: 60,
                  width: 300,
                  child: TextField(
                    key: Key('edit-text'),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Type your text",
                    ),
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ))),
          // RadioButton
          Positioned(
            left: 20,
            top: 100,
            child: Container(
                // You have to set the size with a Container to use a RadioListTile, otherwise it'll break
                height: 60,
                width: 400,
                child: RadioListTile(
                  key: Key("radio"),
                  tileColor: Color.fromRGBO(255, 255, 255, 1),
                  selectedTileColor: Color.fromRGBO(133, 36, 209, 1.0),
                  title: Text("Title",
                      style: TextStyle(
                          fontSize: 20,
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                          color: Color.fromRGBO(0, 0, 0, 1))),
                  subtitle: Text("Subtitle",
                      style: TextStyle(
                          fontSize: 10,
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                          color: Color.fromRGBO(0, 0, 0, 1))),
                  value: 1,
                  onChanged: (newValue) {
                    setState(() {
                      checkRadio = newValue;
                    });
                  },
                  groupValue: checkRadio,
                  activeColor: Color.fromRGBO(133, 36, 209, 1.0),
                )),
          ),

          // ProgressBar
          Positioned(
            left: 20,
            top: 200,
            child: Container(
                height: 10,
                width: 400,
                child: LinearProgressIndicator(
                  key: Key("progress"),
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(
                      133, 36, 209, 1.0)), // Color of the animation
                )),
          ),

          //SeekBar
          Positioned(
              left: 20,
              top: 250,
              child: Container(
                height: 10,
                width: 300,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Color.fromRGBO(133, 36, 209, 1.0),
                    inactiveTrackColor: Color.fromRGBO(133, 36, 209, 0.5),
                    trackHeight: 4.0,
                    thumbColor: Color.fromRGBO(255, 255, 255, 1.0),
                  ),
                  child: Slider(
                    value: seekbarValue,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    label: seekbarValue.toString(),
                    onChanged: (value) {
                      setState(
                        () {
                          seekbarValue = value;
                        },
                      );
                    },
                  ),
                ),
              )),

          // Switch
          Positioned(
              left: 20,
              top: 300,
              child: Container(
                height: 70,
                width: 200,
                child: SwitchListTile(
                  value: switchValue,
                  onChanged: (bool value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                  activeColor: Color.fromRGBO(133, 36, 209, 1),
                  title: Text("Title"),
                  subtitle: Text("Subtitle"),
                  tileColor: Color.fromRGBO(255, 255, 255, 1),
                ),
              )),

          // Spinner
          Positioned(
              left: 20,
              top: 400,
              child: Container(
                height: 70,
                width: 250,
                child: DropdownButton(
                  hint: Text("Select one item"), //placeholder
                  dropdownColor: Color.fromRGBO(255, 255, 255, 1),
                  isExpanded: true,
                  key: Key('dropdown'),
                  value: spinnerSelectedValue,
                  onChanged: (newValue) {
                    setState(() {
                      spinnerSelectedValue = newValue;
                    });
                  },
                  items: spinnerValues
                      .map(
                        (String spinnerValue) => DropdownMenuItem<String>(
                          value: spinnerValue,
                          child: Text(
                            spinnerValue,
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(133, 29, 160, 1)),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ))
        ])));
  }
}
