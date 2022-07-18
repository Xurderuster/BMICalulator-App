import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  final IconData icon;
  final dynamic onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: const Color(0xFF4c4F5E),
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 48.0,
        height: 48.0,
      ),
      shape: const CircleBorder(),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}