import 'package:flutter/material.dart';

class Cardss extends StatelessWidget {
  final Color c;
  final Widget cardChild;
  final Function onPress;

  Cardss({this.c, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
