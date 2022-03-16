import 'package:flutter/widgets.dart';
import '../constant.dart';

class IconWidget extends StatelessWidget {
  IconWidget({required this.icon, required this.text});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 65.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}
