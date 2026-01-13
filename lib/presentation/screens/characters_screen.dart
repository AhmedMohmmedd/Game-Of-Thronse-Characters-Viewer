import 'package:flutter/material.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:  Text(
          'Hallow 2026',
          style: TextStyle(
            fontSize: 40,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
