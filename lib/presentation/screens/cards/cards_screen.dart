import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';

  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards screen'),
      ),
      body: const Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
