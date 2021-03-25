import 'package:flutter/material.dart';
import 'constants.dart';

class TopCards extends StatelessWidget {
  final String gender;
  final IconData ic;

  TopCards({this.gender, this.ic});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ic,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(gender, style: style),
      ],
    );
  }
}
