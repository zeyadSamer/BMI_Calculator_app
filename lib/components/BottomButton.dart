import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton( { required this.onPress,required this.title});

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          color: kCalculatingButtonColor,
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10),
          padding:EdgeInsets.only(bottom: 20),
          child: Center(

            child: Text(title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Colors.white,

                )),
          )),
    );
  }
}
