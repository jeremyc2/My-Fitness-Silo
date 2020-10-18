import 'package:flutter/material.dart';

class FoodNameInput extends StatefulWidget {
  const FoodNameInput({
    Key key,
  }) : super(key: key);

  @override
  _FoodNameInputState createState() => _FoodNameInputState();
}

class _FoodNameInputState extends State<FoodNameInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        autofocus: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 30),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(55.0),
          ),
          fillColor: Colors.grey.shade300,
          filled: true,
          labelText: 'Food Name',
        ),
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
