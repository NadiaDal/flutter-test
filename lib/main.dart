import 'package:flutter/material.dart';

import 'random_words.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      darkTheme: ThemeData(primaryColor: Colors.indigo),
      home: RandomWords(),
    );
  }
}
