import 'file:///C:/Users/inner/StudioProjects/bmi-calculator-flutter/lib/components/round_icon_button.dart';
import 'package:bmi_calculator/components/action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bmi_card.dart';
import '../constants.dart';
import '../gender.dart';
import '../components/icon_content.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Gender activeGender = Gender.Male;
  int height = 180;
  int weight = 75;
  int age = 40;

  Color getGenderBackgroundColor(Gender gender) {
    if (gender == activeGender) {
      return activeCardBackgroundColor;
    }

    return inactiveCardBackgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Genders
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: separationSize,
                  ),
                  showMaleButton(),
                  SizedBox(
                    width: separationSize,
                  ),
                  showFemaleButton(),
                  SizedBox(
                    width: separationSize,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: separationSize,
            ),

            showHeightSlider(),
            SizedBox(
              height: separationSize,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: separationSize,
                  ),
                  showWeightPanel(),
                  SizedBox(
                    width: separationSize,
                  ),
                  showAgePanel(),
                  SizedBox(
                    width: separationSize,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: separationSize,
            ),
            ActionButton(
                text: "CALCULATE",
                onTap: () => Navigator.pushNamed(context, '/results')),
          ],
        ));
  }

  Widget showMaleButton() {
    return Expanded(
      child: BmiCard(
        backgroundColor: activeGender == Gender.Male
            ? activeCardBackgroundColor
            : inactiveCardBackgroundColor,
        child: IconContent(
          icon: FontAwesomeIcons.mars,
          text: 'MALE',
        ),
        onTap: () {
          setState(() {
            activeGender = Gender.Male;
          });
        },
      ),
    );
  }

  Widget showFemaleButton() {
    return Expanded(
      child: BmiCard(
        backgroundColor: activeGender == Gender.Female
            ? activeCardBackgroundColor
            : inactiveCardBackgroundColor,
        child: IconContent(
          icon: FontAwesomeIcons.venus,
          text: 'FEMALE',
        ),
        onTap: () {
          setState(() {
            activeGender = Gender.Female;
          });
        },
      ),
    );
  }

  Widget showHeightSlider() {
    return Expanded(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: separationSize,
          ),
          Expanded(
            child: BmiCard(
              backgroundColor: activeCardBackgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: bigTextStyle,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 14),
                        thumbColor: accentColor,
                        overlayColor: accentColor.withOpacity(0.3),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: labelColor),
                    child: Slider(
                      value: height.toDouble(),
                      min: minHeight.toDouble(),
                      max: maxHeight.toDouble(),
                      onChanged: (newHeight) {
                        setState(() {
                          height = newHeight.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: separationSize,
          ),
        ],
      ),
    );
  }

  Widget showWeightPanel() {
    return Expanded(
      child: BmiCard(
        backgroundColor: activeCardBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WEIGHT',
              style: labelTextStyle,
            ),
            Text(
              weight.toString(),
              style: bigTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundIconButton(
                  Icons.remove,
                  onPressed: weight == 0
                      ? null
                      : () {
                          setState(() {
                            weight--;
                          });
                        },
                ),
                SizedBox(
                  width: separationSize,
                ),
                RoundIconButton(
                  Icons.add,
                  onPressed: () {
                    setState(() {
                      weight++;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget showAgePanel() {
    return Expanded(
      child: BmiCard(
        backgroundColor: activeCardBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'AGE',
              style: labelTextStyle,
            ),
            Text(
              age.toString(),
              style: bigTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundIconButton(
                  Icons.remove,
                  onPressed: age == 0
                      ? null
                      : () {
                          setState(() {
                            age--;
                          });
                        },
                ),
                SizedBox(
                  width: separationSize,
                ),
                RoundIconButton(
                  Icons.add,
                  onPressed: () {
                    setState(() {
                      age++;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
