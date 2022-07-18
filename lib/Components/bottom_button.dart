import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    this.onTap,
    required this.buttonText,
  }) : super(key: key);
  final dynamic onTap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonText,
            style: kContainerTextStyle,
          ),
        ),
      ),
    );
  }
}