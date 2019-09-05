import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp()); // Use arrow for one liner function/method

class MyApp extends StatelessWidget { //Uses Stateless widget makes the app itself a widget
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { // Widget main job to provide build method
    // build method describes how to display the widgets
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Hello App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold( 
        // Scaffold widget provides default app/title bar and body property
           appBar: AppBar(
            title: Text('Welcome to Flutter'),
           ),
          body: Center(
            // child: Text('Keep Fluttering'),
            child: Text(wordPair.asPascalCase),
          ),
      ),
      );
    }
}
