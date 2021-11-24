// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class Variante extends StatelessWidget {
  const Variante({
    Key? key,
    required this.extra,
  }) : super(key: key);

  final String extra;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * .54,
      child: Row(
        children: [
          Text(extra,
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'Montserrat',
                color: kSecondaryLightE0E,
              )),
        ],
      ),
    );
  }
}
