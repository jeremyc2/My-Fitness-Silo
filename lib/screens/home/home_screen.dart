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
        onPressed: () => {},
        tooltip: 'Increment Counter',
        icon: const Icon(Icons.add),
        label: Text('Add Meal'),
        backgroundColor: Colors.red.shade400,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
