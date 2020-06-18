import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'WACard.dart';
import 'Constants.dart';

class WACard extends StatelessWidget {
  WACard({@required this.text, @required this.look, this.onPressedP, this.onPressedM});
  final String text;
  final int look;
  final Function onPressedP;
  final Function onPressedM;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: kTextStyle,
        ),
        SizedBox(
          height: 0.1,
        ),
        Text(
          look.toString(),
          style: TextStyle(
              fontSize:
              MediaQuery.of(context).size.height / 24,
              fontWeight: FontWeight.w900),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CRButton(
              icon: FontAwesomeIcons.plus,
              onPressed: onPressedP,),
            SizedBox(width: 10.0,),
            CRButton(
                icon: FontAwesomeIcons.minus,
                onPressed: onPressedM),
          ],
        ),
      ],
    );
  }
}
