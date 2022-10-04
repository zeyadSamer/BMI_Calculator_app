import 'package:flutter/material.dart';





class ReusableCard extends StatelessWidget {




  ReusableCard({required this.bgColor, required this.cardChild,  this.onPress});

  final Color bgColor;
  final Widget cardChild;
  final VoidCallback? onPress;//or final Function() onPress , the ? is for null safety
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,

      child: Container(
        child:cardChild,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
