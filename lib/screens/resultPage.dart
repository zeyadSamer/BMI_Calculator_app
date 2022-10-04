import 'package:bmi_calculator/components/BottomButton.dart';
import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:flutter/material.dart';

import '../components/constants.dart';


class resultPage extends StatelessWidget {
  resultPage({required this.result,required this.description, required this.status});
  String result;
  String description;
  String status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator'.toUpperCase())),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                    bgColor: kActiveCardColor,
                    onPress: () {},
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            status.toUpperCase(),
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 30,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(result,
                              style: TextStyle(
                                fontSize: 100,
                                fontWeight: FontWeight.bold,
                              )),
                          Text(
                              description,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 22))
                        ])),
              ),
              BottomButton(
                  onPress: () {
                    Navigator.pop(context);
                  },
                  title: 're-calculate'.toUpperCase())
            ]),
      ),
    );
  }
}
