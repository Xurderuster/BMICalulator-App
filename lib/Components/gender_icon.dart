import 'package:flutter/material.dart';
import '../constants.dart';

class GenderIcon extends StatelessWidget {
  const GenderIcon(
      {Key? key, required this.genderIcon, required this.genderText})
      : super(key: key);

  final IconData genderIcon;
  final String genderText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          genderIcon,
          size: kIconSize,
          color: Colors.pink[50],
        ),
        const SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          genderText,
          style: kLabelText,
        ),
      ],
    );
  }
}
