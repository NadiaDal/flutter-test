import 'dart:math';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class WordPairIcon {
  final text;
  final Icon icon;
  static final Random _r = Random();
  static List<int> _points = <int>[
    0xe934,
    0xe850,
    0xe439,
    0xe003,
    0xe145,
    0xe39d,
    0xe85d,
    0xe573
  ];

  WordPairIcon({
    this.text,
    this.icon,
  });

  static List<WordPairIcon> random(int number) {
    final List<WordPairIcon> list = List<WordPairIcon>();

    for (int i = 0; i < number; i++) {
      int _index = _r.nextInt(_points.length);
      list.add(
        new WordPairIcon(
          text: WordPair.random(),
          icon: Icon(
            IconData(_points[_index], fontFamily: 'MaterialIcons'),
            color: Colors.indigo,
          ),
        ),
      );
    }

    return list;
  }
}