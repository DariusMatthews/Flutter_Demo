import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// initialize MyApp
void main() => runApp(MyApp());

//Create MyApp class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return materialApp widget containing app
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }
}

//Create RandomWords state widget
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

//Create RandomWordsState class
class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  //random wordpair list logic
  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        } // generates more wordpairs when at bottom of list
        return _buildRow(_suggestions[index]);
      },
    );
  }

  //random wordpair styles
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
}
