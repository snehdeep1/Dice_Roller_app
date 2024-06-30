import 'dart:math';
import 'package:flutter/material.dart';

final Randomizer=Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerstate();
  }
}

// class _DiceRollerstate extends State<DiceRoller> {
//   var activeDiceimage = 'assets/images/dice-2.png';

//   void rollDice() {
//     var diceroll = Random().nextInt(6) + 1;
//     setState(() {
//       activeDiceimage = 'assets/images/dice-$diceroll.png';
//     });
//   }

class _DiceRollerstate extends State<DiceRoller> {
  var currentdiceroll = 2;

  void rollDice() {
        setState(() {
      currentdiceroll = Randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdiceroll.png',
          width: 200,
        ),
        // TextButton(
        //   onPressed: () {},
        //   child: const text('rollDice'),
        // )
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding:const EdgeInsets.only(top:20,)
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('rollDice'),
        ),
      ],
    );
  }
}
