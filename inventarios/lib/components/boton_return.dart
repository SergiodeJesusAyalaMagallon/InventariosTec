// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class BotonReturn extends StatelessWidget {
  const BotonReturn({
    Key? key,
  }) : super(key: key);

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
            border: Border.all(
              color: kPrimaryLight8D9,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.keyboard_arrow_left_rounded,
              size: 30,
              color: kPrimaryLight8D9,
            ),
          ),
        ),
      ]),
    );
  }
}
