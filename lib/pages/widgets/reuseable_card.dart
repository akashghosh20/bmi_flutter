// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class reuseableCard extends StatelessWidget {
  final Widget cardChild;
  final Color color;
  final Function onPress;
  const reuseableCard({
    Key? key,
    required this.cardChild,
    required this.color,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
