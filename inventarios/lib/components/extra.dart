// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class Extra extends StatelessWidget {
  const Extra({
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
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: kSecondaryLight202,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Text(
              extra,
              style: TextStyle(
                  color: kSecondaryBlack868, fontSize: 12, fontWeight: kmedium),
            ),
          ),
        ],
      ),
    );
  }
}
