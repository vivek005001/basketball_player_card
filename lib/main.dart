import 'package:flutter/material.dart';
import 'player_card_screen.dart';
import 'mock_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basketball Player Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: PlayerCardScreen(
        name: mockPlayer['name'],
        image: mockPlayer['image'],
        position: mockPlayer['position'],
        stats: Map<String, double>.from(mockPlayer['stats']),
      ),
    );
  }
}
