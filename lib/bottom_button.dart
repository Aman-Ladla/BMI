import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String title;

  BottomButton({this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: style1,
        ),
        color: c2,
        width: double.infinity,
        height: h,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
