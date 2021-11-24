// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class BorradoresContainer extends StatelessWidget {
  const BorradoresContainer({
    Key? key,
    required this.onpress,
  }) : super(key: key);

  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: onpress,
      child: Container(
        width: size.width * .85,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 13),
        decoration: BoxDecoration(
          color: kSecondaryBlack403,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: size.width * .7,
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Práctica 18. Módulo SIM900",
                          style: TextStyle(
                              fontWeight: kbold,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              color: kSecondaryLightE0E)),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: kWhiteColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
