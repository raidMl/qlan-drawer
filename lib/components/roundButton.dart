import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {required this.icon,
      required this.txt,
      required this.onPress,
      required this.color});
  final IconData icon;
  final onPress;
  final color;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      height: 50.0,
      child: RawMaterialButton(
        elevation: 2.0,

        constraints: BoxConstraints.tightFor(
          width: 40.0,
          height: 40.0,
        ),
        shape: RoundedRectangleBorder(),
        // shape:BeveledRectangleBorder(),

        fillColor: Color(color),
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: Color(0xffeeeef8),
            ),
            SizedBox(width: 10.0),
            Text(
              txt,
              textAlign: TextAlign.center,
              style: kquizerbtn,
            ),
          ],
        ),
      ),
    );
  }
}
