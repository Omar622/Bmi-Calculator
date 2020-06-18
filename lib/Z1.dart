import 'package:bmicalculatot/components//WACardContent.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components//UsedCard.dart';
import 'components//CardContent.dart';
import 'components//Constants.dart';
import 'components//GreatButton.dart';
import 'components/CalcBrain.dart';
import 'package:fluttertoast/fluttertoast.dart';

CalcBrain userData;
enum Gender { male, female }
Gender selectedGender;
int height = 170;
int weight = 60;
int age = 18;

class Z1 extends StatefulWidget {
  @override
  _Z1State createState() => _Z1State();
}

class _Z1State extends State<Z1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: UsedCard(
                    colored: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    content: CardContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onTapped: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  )),
                  Expanded(
                      child: UsedCard(
                    colored: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    content: CardContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onTapped: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  )),
                ],
              ),
            ),
            Expanded(
              child: UsedCard(
                colored: kActiveCardColor,
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Height',
                      style: kTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 24,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'cm',
                          style: kTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTickMarkColor: kInactiveSliderColor,
                        activeTrackColor: Colors.white,
                        thumbColor: kActiveSliderColor,
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius:
                                MediaQuery.of(context).size.height / 50),
                        overlayShape: RoundSliderOverlayShape(
                            overlayRadius:
                                MediaQuery.of(context).size.height / 25),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        max: kMax,
                        min: kMin,
                        onChanged: (double val) {
                          setState(() {
                            height = val.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: UsedCard(
                      colored: kActiveCardColor,
                      content: WACard(
                        text: 'WEGHIT',
                        look: weight,
                        onPressedP: () {
                          setState(() {
                            if (weight < 150) weight++;
                          });
                        },
                        onPressedM: () {
                          setState(() {
                            if (weight > 1) weight--;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: UsedCard(
                      colored: kActiveCardColor,
                      content: WACard(
                        text: 'AGE',
                        look: age,
                        onPressedP: () {
                          setState(() {
                            if (age < 120) age++;
                          });
                        },
                        onPressedM: () {
                          setState(() {
                            if (age > 1) age--;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GreatButton(
              text: 'CALCULATE',
              onPressed: () {
                if (selectedGender == Gender.male ||
                    selectedGender == Gender.female) {
                  userData = CalcBrain(height, weight);
                  Navigator.pushNamed(context, '/result');
                } else
                  Fluttertoast.showToast(
                    msg: 'choose gender first!',
                    gravity: ToastGravity.BOTTOM);
              },
            ),
          ],
        ),
      ),
    );
  }
}
