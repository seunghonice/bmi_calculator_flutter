import 'package:bmi_calculator_flutter/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Row(children: [
          ReusableCard(
            color: Color(0xFF1d1E33),
            cardChild: IconContent(
              icon: FontAwesomeIcons.mars,
              label: 'MALE',
            ),
          ),
          ReusableCard(
            color: Color(0xFF1d1E33),
            cardChild: IconContent(
              icon: FontAwesomeIcons.venus,
              label: 'FEMALE',
            ),
          ),
        ]),
        ReusableCard(color: Color(0xFF1d1E33)),
        Row(children: [
          ReusableCard(color: Color(0xFF1d1E33)),
          ReusableCard(color: Color(0xFF1d1E33)),
        ]),
        Container(
          color: bottomContainerColor,
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          height: bottomContainerHeight,
        )
      ]),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, this.cardChild});

  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200.0,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
