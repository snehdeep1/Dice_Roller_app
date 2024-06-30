// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key,required this.Colors}); //({key}:super(key:key);

//   final List<Color>Colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration:BoxDecoration(
//         gradient: LinearGradient(
//           colors:Colors,
//           begin:startAlignment ,
//           end:endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('hello world!')
//       ),
//     );
//   }
// }

class GradientContainer extends StatelessWidget {
 const GradientContainer(this.color1, this.color2,
      {super.key}); //({key}:super(key:key);

  // const GradientContainer.purple({super.key}):color1=Colors.deepPurple,color2=Colors.indigo

  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:const Center(
        child:DiceRoller(), 
      ),
    );
  }
}
