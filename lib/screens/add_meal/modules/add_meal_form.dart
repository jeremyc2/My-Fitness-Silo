import 'package:flutter/material.dart';
import 'package:my_fitness_silo/screens/home/modules/food_name_input.dart';
import 'package:my_fitness_silo/screens/home/modules/macro_input.dart';
import 'package:my_fitness_silo/screens/home/modules/submit_button.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MacroInput('Calories'),
                    MacroInput('Protien'),
                  ],
                ),
                SubmitButton(formKey: _formKey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
