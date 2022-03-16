import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/components/reusible_card.dart';
import '../components/bottomButton.dart';
import '../constant.dart';

class Result extends StatelessWidget {
  Result(
      {required this.bmiResult,
      required this.bmiResultTxt,
      required this.bmiResultInterpretation});
  final String bmiResult;
  final String bmiResultTxt;
  final String bmiResultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch, //for width 100%
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: TextStyle(
                    color: Color(0xffF1F1F1),
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                coulour: kcolortype,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(bmiResultTxt, style: kTealText),
                    Text(
                      bmiResult,
                      style: kWeightText,
                    ),
                    Text(bmiResultInterpretation,
                        textAlign: TextAlign.center, style: ksimpleTxt),
                  ],
                ),
              )),
          bottomButton(
              ontap: () {
                Navigator.pop(context);
              },
              text: "RECALCULATE"),
        ],
      ),
    );
  }
}
