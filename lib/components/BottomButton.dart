import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onPress, this.text});

  final Function onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: klargeboxtextstyle,
          ),
        ),
        color: kbottomContainerColor,
        height: kbottomContainerheight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20),
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
