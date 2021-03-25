import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'cardss.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String suggestion;
  final String bmi;

  ResultPage({this.result, this.bmi, this.suggestion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                style: style2,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Cardss(
              c: c1,
              cardChild: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result,
                      textAlign: TextAlign.center,
                      style: style3,
                    ),
                    Text(
                      bmi,
                      textAlign: TextAlign.center,
                      style: style4,
                    ),
                    Text(
                      suggestion,
                      textAlign: TextAlign.center,
                      style: style5,
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            title: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
