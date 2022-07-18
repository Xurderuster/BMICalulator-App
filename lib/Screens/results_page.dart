import 'package:bmi/Components/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/Components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key? key,
      required this.bmiStatus,
      required this.bmiResult,
      required this.bmiFeedback,
      required this.bmiStatusTextColor})
      : super(key: key);

  final String bmiStatus;
  final String bmiResult;
  final String bmiFeedback;
  final Color bmiStatusTextColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kResultHeadingTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiStatus.toUpperCase(),
                    style: TextStyle(
                      color: bmiStatusTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Normal BMI Range:',
                        style: kLabelText,
                      ),
                      Text(
                        '18.5 - 25 Kg/m²',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      bmiFeedback,
                      style: kBMICommentTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
