import 'package:dice/screens/dice.dart';
import 'package:dice/screens/start.dart';
import 'package:dice/settings/app_colors.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  bool isStart = true;

  void startGame(){
    setState(() {
      isStart = !isStart;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: SweepGradient(
            tileMode: TileMode.repeated,
            startAngle: 0,
            endAngle: 0.4,
            center: AlignmentDirectional.center,
            colors: colors,
          ),
        ),
        child: isStart?StartScreen(startGame):DiceScreen(),
      ),
    );
  }
}
