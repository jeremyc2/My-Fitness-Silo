import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
