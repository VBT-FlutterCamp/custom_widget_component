import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class VerticalProfileDivider extends StatelessWidget {
  const VerticalProfileDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: context.dynamicHeight(0.08),
      width: context.dynamicWidth(0.005),
    );
  }
}
