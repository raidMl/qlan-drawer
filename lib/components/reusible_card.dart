import 'package:flutter/widgets.dart';

class ReusableCard extends StatelessWidget {
  // StatelessWidget imutibale widget //we can't modify it  and contain constants
  //defferance between const final :const creat it when finish compile ---####--- final exist anytime when runing

  ReusableCard({required this.coulour, this.cardChild, this.onPress});
  final Color coulour;
  final Widget? cardChild;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: coulour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
