
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
class GenderCard extends StatelessWidget {


  GenderCard({ required this.icon,  required this.genderType});

    final IconData icon;
    final String genderType;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

       Icon(
           this.icon,
         size:80

       ),
        SizedBox(
          height:15,

        ),
        Text(
            genderType,
         style:kLabelTextStyle,

          ),



      ]



    );
  }
}
