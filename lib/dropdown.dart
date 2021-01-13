/// Flutter code sample for DropdownButton
// @dart = 2.9

// This sample shows a `DropdownButton` with a large arrow icon,
// purple text style, and bold purple underline, whose value is one of "One",
// "Two", "Free", or "Four".
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/material/dropdown_button.png)

import 'package:flutter/material.dart';

//void main() => runApp(MyDropDown());

/// This is the main application widget.
/* class MyDropDown extends StatelessWidget {
  static const String _title = 'Drop Down Select Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
} */

/// This is the stateful widget that the main application instantiates.
class MyDropStatefulWidget extends StatefulWidget {
  MyDropStatefulWidget({Key key}) : super(key: key);

  @override
  _MyDropStatefulWidgetState createState() => _MyDropStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyDropStatefulWidgetState extends State<MyDropStatefulWidget> {
  String dropdownValue = '0';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 50,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      /* underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ), */
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['0','1', '2', '3', '4', '5', '6']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 25, color: Colors.black.withOpacity(1.0)),),
          
          
        );
      }).toList(),
      //onChanged: (debugPrint('local terminal test')),

     
    );
  }
}
