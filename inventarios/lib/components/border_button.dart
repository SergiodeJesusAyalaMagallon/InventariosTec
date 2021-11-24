// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class BorderButton extends StatelessWidget {
  const BorderButton({
    Key? key,
    required this.textcolor,
    required this.bordercolor,
    required this.color,
    required this.titulo,
    this.radius = 10,
  }) : super(key: key);

  final Color bordercolor, color, textcolor;
  final String titulo;
  final double radius;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .88,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: bordercolor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(titulo,
            style:
                TextStyle(fontWeight: kbold, fontSize: 16, color: textcolor)),
      ),
    );
  }
}
