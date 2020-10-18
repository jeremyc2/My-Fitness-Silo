import 'package:flutter/material.dart';

class MacroInput extends StatefulWidget {
  final String name;

  const MacroInput(this.name, {Key key}) : super(key: key);

  @override
  _MacroInputState createState() => _MacroInputState();
}

class _MacroInputState extends State<MacroInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            fillColor: Colors.grey.shade300,
            filled: true,
            labelText: widget.name,
            contentPadding: EdgeInsets.only(left: 30)),
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }
}
