import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardss.dart';
import 'top_card.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottom_button.dart';
import 'brain.dart';

enum Gender { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cardss(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    c: selectedGender == Gender.MALE ? tapped : c1,
                    cardChild: TopCards(
                      gender: 'MALE',
                      ic: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: Cardss(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    c: selectedGender == Gender.FEMALE ? tapped : c1,
                    cardChild: TopCards(
                      gender: 'FEMALE',
                      ic: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cardss(
                    c: c1,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: style,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: styleBig,
                            ),
                            Text(
                              'cm',
                              style: style,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            thumbColor: c2,
                            overlayColor: Color(0x29EB1555),
                            //inactiveColor: Color(0xFF8d8e98),
                            inactiveTrackColor: Color(0x4A8d8e98),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 100.0,
                            max: 300.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cardss(
                    c: c1,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: style,
                        ),
                        Text(
                          weight.toString(),
                          style: styleBig,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyButton(
                              icon: FontAwesomeIcons.minus,
                              press: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            MyButton(
                              icon: FontAwesomeIcons.plus,
                              press: () {
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
                ),
                Expanded(
                    child: Cardss(
                  c: c1,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: style,
                      ),
                      Text(
                        age.toString(),
                        style: styleBig,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton(
                            icon: FontAwesomeIcons.minus,
                            press: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0),
                          MyButton(
                            icon: FontAwesomeIcons.plus,
                            press: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              Brain brain = Brain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmi: brain.calculateBMI(),
                    result: brain.getResult(),
                    suggestion: brain.suggestion(),
                  ),
                ),
              );
            },
            title: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final IconData icon;
  final Function press;

  MyButton({this.icon, this.press});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: press,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
