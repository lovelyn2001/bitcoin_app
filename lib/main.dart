// main.dart
// Entry point of the Bitcoin app. Sets up the main application widget and navigation.

import 'package:flutter/material.dart';
import 'package:bitcoin_app/screens/price-screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light().copyWith(
          primary: Colors.lightBlue, // primary color
          secondary: Colors.lightBlueAccent, // secondary color
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      home: const PriceScreen(),
    ),
  );
}
