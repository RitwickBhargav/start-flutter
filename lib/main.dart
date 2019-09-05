import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp()); // Use arrow for one liner function/method

class MyApp extends StatelessWidget { //Uses Stateless widget makes the app itself a widget
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { // Widget main job to provide build method
    // build method describes how to display the widgets
    return MaterialApp(
      title: 'Hello App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
       home:RandomWords(),
     // Scaffold( 
      ////   // Scaffold widget provides default app/title bar and body property
      //      appBar: AppBar(
      //       title: Text('Welcome to Flutter'),
      //      ),
      //     body: Center(
      //       // child: Text('Keep Fluttering'),
      //       child: RandomWords(),
      //     ),
      // ),
      );
    }
}

class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions(){
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i){
        if(i.isOdd) return Divider();
        final index = i ~/ 2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget _buildRow(WordPair pair){
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}