import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  RoundActionButton(this.icon, this.onPress);

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      shape: CircleBorder(),
      elevation: 12.0,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
