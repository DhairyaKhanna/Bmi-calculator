import '../components/BottomButton.dart';
import '../components/constants.dart';
import '../components/icon_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/Reusablecard.dart';
import 'Calculator_brain.dart';

class Result extends StatelessWidget {
  Result({this.icon, @required this.bmiresult, @required this.interpretation});

  final IconData icon;
  final String bmiresult;
  final String interpretation;

  String size = 'Normal';
  int bmi = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.bottomLeft,
                  child: Text('Your Result', style: kresulttext),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  color: kactivecardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        icon,
                        color: Colors.green,
                        size: 80,
                      ),
                      Text(
                        bmiresult,
                        style: TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        interpretation,
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              BottomButton(
                onPress: () {
                  Navigator.pop(context);
                },
                text: 'RE-CALCULATE',
              )
            ],
          ),
        ));
  }
}
