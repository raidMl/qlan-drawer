import 'package:flutter/widgets.dart';
import '../constant.dart';

class bottomButton extends StatelessWidget {
  bottomButton({required this.ontap, required this.text});
  final ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        color: Color(0xff1A73E8),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xfffaf4f4),
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        padding: EdgeInsets.only(bottom: 20),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kbuttomContainerHeight,
      ),
    );
  }
}
