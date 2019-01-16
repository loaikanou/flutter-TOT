import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWord extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}

class RandomWordState extends State<RandomWord> {
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor: Colors.green,
        child: Text(
          pair.asPascalCase.substring(0, 1),
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
          ),
        ),
      ),
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        // itemCount: itemCount,
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return new Divider();
          }
          final int index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }
}
