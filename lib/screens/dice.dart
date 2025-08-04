import 'dart:math';
import 'package:dice/settings/dice_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  final randomizer = Random();
  int _dice = 1;
  Color _diceColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _dice = randomizer.nextInt(5) + 1;
              diceColors.shuffle();
              _diceColor = diceColors.first;
            });
          },
          child: SizedBox(
            width: 240,
            height: 240,
            child: Image.asset(
              'assets/dice_images/dice-six-faces-$_dice.png',
              fit: BoxFit.cover,
              color: _diceColor.withAlpha(218),
            ),
          ),
        ),
        SizedBox(height: 50),
        IconButton(
          onPressed: ()=> SystemNavigator.pop(),
          icon: Icon(Icons.dangerous_outlined, color: Colors.red.shade800, size: 40),
        ),
      ],
    );
  }
}
