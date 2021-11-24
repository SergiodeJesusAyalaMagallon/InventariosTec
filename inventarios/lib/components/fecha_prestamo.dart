// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class FechaPrestamo extends StatelessWidget {
  const FechaPrestamo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
              color: kPrimaryLight8D9,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("15",
                    style: TextStyle(
                        fontWeight: kbold,
                        fontSize: 29,
                        fontFamily: 'Montserrat',
                        color: kPrimaryColor1B3)),
                Text("OCT",
                    style: TextStyle(
                        fontWeight: kbold,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        color: kPrimaryColor1B3.withOpacity(.55))),
                Text("2021",
                    style: TextStyle(
                        fontWeight: kbold,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        color: kPrimaryColor1B3.withOpacity(.3))),
              ],
            )),
        Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
              color: kPrimaryLight8D9,
            ),
            child: Text("")),
        Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
              color: kSecondaryBlack333,
            ),
            child: Text("")),
        Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
              color: kSecondaryBlack333,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("02",
                    style: TextStyle(
                        fontWeight: kbold,
                        fontSize: 29,
                        fontFamily: 'Montserrat',
                        color: kWhiteColor)),
                Text("NOV",
                    style: TextStyle(
                        fontWeight: kbold,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        color: kWhiteColor.withOpacity(.55))),
                Text("2021",
                    style: TextStyle(
                        fontWeight: kbold,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        color: kWhiteColor.withOpacity(.3))),
              ],
            )),
      ],
    );
  }
}
