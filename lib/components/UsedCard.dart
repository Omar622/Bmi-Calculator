import 'package:flutter/material.dart';

class UsedCard extends StatelessWidget {
  const UsedCard({
    @required this.content,
    this.colored,
    this.onTapped,
  });

  final Widget content;
  final Color colored;
  final Function onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        child: content,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colored, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
