import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class AppState extends ChangeNotifier {
  var current = WordPair.random();
}