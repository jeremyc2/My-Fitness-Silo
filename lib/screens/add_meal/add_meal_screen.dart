import 'package:flutter/material.dart';

import 'modules/add_meal_form.dart';

class AddMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add A Meal',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            wordSpacing: 3.0,
            letterSpacing: 1.5,
          ),
        ),
        backgroundColor: Colors.blue.shade400,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: AddMealForm(),
    );
  }
}
