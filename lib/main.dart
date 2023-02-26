import 'package:flutter/material.dart';
import 'package:shopping/shopping.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => shopping(),
      },
    ),
  );
}
