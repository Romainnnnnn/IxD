import 'package:flutter/material.dart';
import 'dart:math';

class DevTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snake-like Board'),
        ),
        body: Center(
          child: TicTacToeBoard(),
        ),
      ),
    );
  }
}

class TicTacToeBoard extends StatefulWidget {
  @override
  _TicTacToeBoardState createState() => _TicTacToeBoardState();
}

class _TicTacToeBoardState extends State<TicTacToeBoard> {
  List<List<String>> board = List.generate(7, (_) => List.filled(7, ''));

  int currentPlayer = 1;
  int scorePlayer1 = 0;
  int scorePlayer2 = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Current Player: $currentPlayer',
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          'Score player 1: $scorePlayer1',
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          'Score player 2: $scorePlayer2',
          style: const TextStyle(fontSize: 18),
        ),
        for (int i = 0; i < 7; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int j = 0; j < 7; j++)
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: _getBorder(i, j),
                    borderRadius: _getBorderRadius(i, j),
                  ),
                  child: Text(
                  placementP1() + placementP2(),
                  style: const TextStyle(fontSize: 12),
          ),

                ),
            ],
          ),
        const SizedBox(height: 20),
        ElevatedButton(
        onPressed: () {
            _rollDice(currentPlayer);
          },
          child: const Text('Roll the Dice'),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  BorderRadius _getBorderRadius(int rowIndex, int colIndex) {
    if (rowIndex == 0 && colIndex == 6) {
      return BorderRadius.circular(0);
    }
    else {
      return BorderRadius.circular(0);
    }
  }

  Border _getBorder(int rowIndex, int colIndex) {
    if (rowIndex == 0 && colIndex == 0) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 0 && colIndex == 1) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 0 && colIndex == 2) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 0 && colIndex == 3) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 0 && colIndex == 4) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 0 && colIndex == 5) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 0 && colIndex == 6) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), right:BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 1 && colIndex == 0) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 1 && colIndex == 1) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
     if (rowIndex == 1 && colIndex == 2) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 1 && colIndex == 3) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 1 && colIndex == 4) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 1 && colIndex == 5) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5)),right: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 1 && colIndex == 6) {
      return const Border(right: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 2 && colIndex == 6) {
      return const Border(right: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 2 && colIndex == 0) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), left:BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 2 && colIndex == 1) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 2 && colIndex == 2) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 2 && colIndex == 3) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 2 && colIndex == 4) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 2 && colIndex == 5) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 3 && colIndex == 1) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5)),left: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 3 && colIndex == 2) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 3 && colIndex == 3) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 3 && colIndex == 4) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 3 && colIndex == 5) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 3 && colIndex == 6) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    } 
    if (rowIndex == 3 && colIndex == 0) {
      return const Border(left: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 4 && colIndex == 0) {
      return const Border(left: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 4 && colIndex == 1) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 4 && colIndex == 2) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 4 && colIndex == 3) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 4 && colIndex == 4) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 4 && colIndex == 5) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 4 && colIndex == 6) {
      return const Border(top: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), right: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 5 && colIndex == 6) {
      return const Border(left: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), right: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 6 && colIndex == 6) {
      return const Border(bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), right: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 6 && colIndex == 0) {
      return const Border(bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 6 && colIndex == 1) {
      return const Border(bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 6 && colIndex == 2) {
      return const Border(bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 6 && colIndex == 3) {
      return const Border(bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 6 && colIndex == 4) {
      return const Border(bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    if (rowIndex == 6 && colIndex == 5) {
      return const Border(bottom: BorderSide(color: Color.fromARGB(255, 173, 5, 5)), top: BorderSide(color: Color.fromARGB(255, 173, 5, 5))); 
    }
    else{
      return const Border();
    }
  }

  // Define a function to handle the dice rolling logic
  void _rollDice(int playerNumber) {

    Random random = Random();
    int diceNumber = random.nextInt(6) + 1;

    if (playerNumber == 1){
      scorePlayer1 += diceNumber;
      currentPlayer = 2;
    }
    else {
      scorePlayer2 += diceNumber;
      currentPlayer = 1;  
    }
    // Replace this with your actual dice rolling logic
    // For now, just print a message
    setState(() {
      
    });
    print('Dice Rolled!');
  }

  String placementP1(){
    return 'P1';
  }
    String placementP2(){
    return 'P2';
  }

}

