// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class CardArticulo extends StatelessWidget {
  const CardArticulo({
    Key? key,
    required this.url,
    required this.titulo,
    this.extra = const SizedBox(
      height: 1,
    ),
    required this.onPress,
  }) : super(key: key);
  final String url;
  final String titulo;
  final Widget extra;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Container(
        width: 160,
        height: 220,
        decoration: BoxDecoration(
          color: kSecondaryBlack2E2,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                color: kSecondaryBlack4A4,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                url,
                scale: .1,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 15, top: 10),
              child: Text(titulo,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      color: kSecondaryLightE0E,
                      fontWeight: kbold)),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 15, top: 5, bottom: 10),
                child: extra),
          ],
        ),
      ),
    );
  }
}
