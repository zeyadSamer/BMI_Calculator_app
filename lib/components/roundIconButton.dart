
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({ required this.icon,required this.onPress });
  final VoidCallback onPress;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(

      onPressed:onPress,
      elevation:10,

      constraints: BoxConstraints.tightFor(
        width:55,
        height:55,
      ),

      shape:CircleBorder(

      ),
      fillColor:Color(0xFF4C4F5E),
      child:Icon(icon),
      )

    ;
  }
}
