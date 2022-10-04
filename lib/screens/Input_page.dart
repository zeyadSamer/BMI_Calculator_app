import 'package:bmi_calculator/components/BottomButton.dart';
import 'package:bmi_calculator/BMICalculator.dart';
import 'package:bmi_calculator/screens/resultPage.dart';
import 'package:flutter/material.dart';
import '../components/ReusableCard.dart';
import '../components/gender.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/constants.dart';

import '../components/roundIconButton.dart';

enum Gender {
  Male,
  Female,
}


class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = kInactiveCardColor;
  Color femaleColor = kInactiveCardColor;
  var selectedGender;
  int age=10;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'.toUpperCase(),
          style:TextStyle(
            fontSize: 22,

          )
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(

            child: Row(
              children: <Expanded>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    bgColor: selectedGender == Gender.Male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: GenderCard(
                      icon: FontAwesomeIcons.mars,
                      genderType: Gender.Male.name,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    bgColor: selectedGender == Gender.Female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: GenderCard(
                        icon: FontAwesomeIcons.venus,
                        genderType: Gender.Female.name),
                  ),
                ),
              ],
            ),
          ),
          Expanded(

            child: ReusableCard(
              bgColor: kReusableCardColor,
              cardChild: Column(

                  children: <Widget>[
                    Text('HEIGHT',

                        style: kLabelTextStyle),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(height.toString(), style: kNumbersTextStyle),
                          Text('cm', style: kLabelTextStyle),
                        ]),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTickMarkColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        trackHeight: 3,
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        overlayColor: Color(0x29EB1555),
                        activeTrackColor: Colors.white,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            child: Row(
              children: <Expanded>[
                Expanded(
                    child: ReusableCard(
                  onPress: () {},
                  bgColor: kReusableCardColor,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT', style: kLabelTextStyle),
                        Text(weight.toString(), style: kNumbersTextStyle),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(width: 10),
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ])
                      ]),
                )),
                Expanded(
                  child: ReusableCard(
                    bgColor: kReusableCardColor,
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE', style: kLabelTextStyle),
                          Text(age.toString(), style: kNumbersTextStyle),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  onPress: () {

                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(width: 10),
                                RoundIconButton(
                                  onPress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: FontAwesomeIcons.plus,
                                ),
                              ]),
                        ]),
                  ),
                ),
              ],
            ),
          ),

            BottomButton(

                onPress:() {
                  BMI bmi =BMI(height: this.height, weight: this.weight);
                  Navigator.push(context, MaterialPageRoute(

                      builder: (context)=>resultPage(
                          result:bmi.calculate(),
                          description: bmi.getExplanation(),
                          status: bmi.getStatus(),
                      )
                  ),
                  );

                }, title:'calculate'.toUpperCase()
            ),


        ],
      ),
    );
  }
}

