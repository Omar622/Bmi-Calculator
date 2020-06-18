import 'package:flutter/material.dart';

class CRButton extends StatelessWidget {
  CRButton({@required this.icon, this.onPressed,
    //this.onLongPressed
  });
  final IconData icon;
  final Function onPressed;
  //final Function onLongPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      //onLongPress: onLongPressed,
      constraints: BoxConstraints.tight(
          Size.square(MediaQuery.of(context).size.height / 15)),
      onPressed: onPressed,
      elevation: 0.0,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      child: Icon(icon),
    );
  }
}
