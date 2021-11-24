// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BotonRect extends StatelessWidget {
  const BotonRect(
      {Key? key,
      required this.icon,
      required this.color,
      required this.bordercolor,
      required this.iconcolor})
      : super(key: key);

  final IconData icon;
  final Color iconcolor, bordercolor, color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: 50,
      height: 50,
      child: Row(children: [
        Container(
          width: size.width * .12,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: bordercolor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              icon,
              size: 25,
              color: iconcolor,
            ),
          ),
        ),
      ]),
    );
  }
}
