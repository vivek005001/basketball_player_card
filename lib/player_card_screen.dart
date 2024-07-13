import 'package:flutter/material.dart';

class PlayerCardScreen extends StatelessWidget {
  final String name;
  final String image;
  final String position;
  final Map<String, double> stats;

  PlayerCardScreen({
    required this.name,
    required this.image,
    required this.position,
    required this.stats,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Player Card',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black, // Set the background color of the Scaffold
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(

                'lib/assets/background.png', // Your background image asset
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Content
          Center(

          child: (

          Container(

          height: 520,
          width: 360,
          decoration: BoxDecoration(

          color: Colors.yellow,

          borderRadius: BorderRadius.all(Radius.circular(6.0)),
          image: DecorationImage(
          image: AssetImage('lib/assets/bg.png'),
          fit: BoxFit.cover,
          ),
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: 16),
          Padding(
          padding: const EdgeInsets.only(top: 16.0),
    child: Text(
    name,
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    textAlign: TextAlign.left,
    ),
    ),
    SizedBox(height: 16),
    Container(
    width: 225,
    height: 235,
    decoration: BoxDecoration(
    shape: BoxShape.rectangle,
    border: Border.all(
    color: Colors.white, // Border color
    width: 2, // Border width
    ),
    image: DecorationImage(
    image: NetworkImage(image),
    fit: BoxFit.cover,
    ),
    ),
    ),
    SizedBox(height: 16),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset(
    'lib/assets/location.png',

    ),
    SizedBox(width: 8),
    Text(
    position,
    style: TextStyle(
    fontSize: 20,
    color: Colors.white,
    ),
    ),
    ],
    ),
    SizedBox(height: 8), // Adjust for spacing
    Container(
    width: 225,
    height: 120,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(


    ),

    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    '⭐⭐',
    style: TextStyle(
    fontSize: 18,
    color: Colors.yellow[700],
    ),
    ),
    Text(
    ' STATS ',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    Text(
    '⭐⭐',
    style: TextStyle(
    fontSize: 18,
    color: Colors.yellow[700],
    ),
    ),
    ],
    ),
    Divider(color: Colors.white, thickness: 1, height: 8),
    ...stats.entries.map((entry) {
    return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(
    entry.key.toUpperCase(),
    style: TextStyle(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    ),
    ),
    Text(
    ': ${entry.value}',
    style: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    ],
    ),
    );
    }).toList(),
    ],
    ),
    )
    ],
    ),


    )
    ),
    )

        ],
      ),
    );
  }
}
