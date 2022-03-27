import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTitle, required this.onTap});

  final String buttonTitle;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? onTap?.call(),
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: bottomContainerColor,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        height: bottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}
