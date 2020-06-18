import 'package:flutter/material.dart';
import 'Constants.dart';

class CardContent extends StatelessWidget {
  const CardContent({@required this.icon, @required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: MediaQuery.of(context).size.height / 12,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 76,
        ),
        Text(
          label,
          style: kTextStyle,
        ),
      ],
    );
  }
}
