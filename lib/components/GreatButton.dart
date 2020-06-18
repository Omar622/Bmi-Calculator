import 'package:flutter/material.dart';
import 'Constants.dart';

class GreatButton extends StatelessWidget {
  const GreatButton({@required this.text, @required this.onPressed});
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: MediaQuery.of(context).size.height / 8,
      width: double.infinity,
      child: FlatButton(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            text,
            style: kTextStyleButton,
          ),
        ),
        color: kButtonColor,
        onPressed: onPressed,
      ),
    );
  }
}
