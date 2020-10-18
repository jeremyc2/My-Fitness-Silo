import 'package:flutter/material.dart';
import 'package:my_fitness_silo/screens/home/modules/food_name_input.dart';
import 'package:my_fitness_silo/screens/home/modules/macro_input.dart';
import 'package:my_fitness_silo/screens/home/modules/submit_button.dart';

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
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    color: Colors.white,
                    child: AddMealForm(),
                  )),
        },
        icon: const Icon(Icons.add),
        label: Text('Add Meal'),
        backgroundColor: Colors.red.shade400,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class AddMealForm extends StatefulWidget {
  AddMealForm({Key key}) : super(key: key);

  @override
  _AddMealFormState createState() => _AddMealFormState();
}

/// This is the private State class that goes with AddMealForm.
class _AddMealFormState extends State<AddMealForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: SizedBox(
          width: 350.0,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                FoodNameInput(),
                MacroInput('Calories'),
                SubmitButton(formKey: _formKey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
