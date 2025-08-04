import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startGame, {super.key});
  final VoidCallback startGame;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-fire.png', width: 180),
        TextButton(
          onPressed: startGame,
          child: Text(
            "START",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
