
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  // Liste qui stocke l'historique des mot
  var history = <WordPair>[];

  GlobalKey? historyListKey;// La cle pour save historique

  void getNext() {
    history.insert(0, current);
    var animatedList = historyListKey?.currentState as AnimatedListState?;
    animatedList?.insertItem(0); // ??
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];

  // On verifie maintenant si le mot selectionner fait deja partie de la list des favorie
  void toggleFavorite([WordPair? pair]) {
    pair = pair ?? current;
    if (favorites.contains(pair)) {
      favorites.remove(pair);
    } else {
      favorites.add(pair);
    }
    notifyListeners();
  }

  void removeFavorite(WordPair pair) {
    favorites.remove(pair);
    notifyListeners();
  }
}