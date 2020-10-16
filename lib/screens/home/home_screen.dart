import 'package:flutter/material.dart';

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/fruit.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            MainContent(
              color: Colors.red.shade400,
            ),
            MainContent(
              color: Colors.green.shade400,
            ),
            MainContent(
              color: Colors.blue.shade400,
            ),
            MainContent(
              color: Colors.yellow.shade400,
            ),
          ],
        ),
      ),
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

class MainContent extends StatelessWidget {
  final Color color;
  const MainContent({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Card(
        color: color.withAlpha(150),
      ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FoodNameInput(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(55.0),
                        ),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        labelText: 'Food Name',
                        contentPadding: EdgeInsets.only(left: 30)),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        // Process data.
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(55.0),
            ),
            fillColor: Colors.grey.shade300,
            filled: true,
            labelText: 'Food Name',
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
