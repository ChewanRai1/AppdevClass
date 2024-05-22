import 'dart:math';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int correctAnswers = 0;
  int incorrectAnswers = 0;
  int guessCount = 0;
  int number1 = Random().nextInt(100) + 1;
  int number2 = Random().nextInt(100) + 1;
  void generateNumbers() {
    setState(() {
      number1 = Random().nextInt(100) + 1;
      number2 = Random().nextInt(100) + 1;
    });
  }

  void checkGuess(bool isFirstNumber) {
    if (guessCount >= 10) return;
    setState(() {
      if ((isFirstNumber && number1 > number2) ||
          (!isFirstNumber && number2 > number1)) {
        correctAnswers++;
      } else {
        incorrectAnswers++;
      }
      guessCount++;
      if (guessCount < 10) {
        generateNumbers();
      }
    });
  }

  void restartGame() {
    setState(() {
      correctAnswers = 0;
      incorrectAnswers = 0;
      guessCount = 0;
      generateNumbers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Generator Game'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (guessCount < 10) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => checkGuess(true),
                    child:
                        Text('$number1', style: const TextStyle(fontSize: 24)),
                  ),
                  ElevatedButton(
                    onPressed: () => checkGuess(false),
                    child:
                        Text('$number2', style: const TextStyle(fontSize: 24)),
                  ),
                ],
              ),
            ],
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const Text('Game Stats',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('Correct answers: $correctAnswers',
                      style: const TextStyle(fontSize: 18)),
                  Text('Incorrect answers: $incorrectAnswers',
                      style: const TextStyle(fontSize: 18)),
                  if (guessCount >= 10) ...[
                    const SizedBox(height: 20),
                    const Text('Game Over',
                        style: TextStyle(fontSize: 24, color: Colors.red)),
                    ElevatedButton(
                      onPressed: restartGame,
                      child: const Text('Restart Game'),
                    ),
                  ],
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
