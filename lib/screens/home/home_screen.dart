import 'package:flutter/material.dart';
import 'package:my_fitness_silo/screens/add_meal/add_meal_screen.dart';

import 'modules/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Fitness Silo',
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
      body: Body(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddMealScreen()),
          )
        },
        icon: const Icon(Icons.add),
        label: Text('Add Meal'),
        backgroundColor: Colors.red.shade400,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
