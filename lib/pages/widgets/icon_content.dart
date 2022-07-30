// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class iconcontent extends StatelessWidget {
  final IconData icon;
  final String label;
  const iconcontent({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Colors.amberAccent,
          ),
        ),
      ],
    );
  }
}
