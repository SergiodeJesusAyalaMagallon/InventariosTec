// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MaterialContainerFinal extends StatelessWidget {
  const MaterialContainerFinal({
    Key? key,
    required this.url,
    required this.titulo,
    this.child = const SizedBox(
      height: 10,
    ),
    required this.cantidad,
  }) : super(key: key);

  final String titulo, url;
  final Widget child;
  final int cantidad;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      padding: EdgeInsets.all(10),
      width: size.width * .85,
      decoration: BoxDecoration(
        color: kSecondaryBlack252,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(children: [
        Row(
          children: [
            Container(
              width: 67,
              height: 67,
              decoration: BoxDecoration(
                color: kSecondaryBlack4A4,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                url,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    width: size.width * .45,
                    margin: EdgeInsets.only(left: 10, right: 40),
                    child: Text(
                      titulo,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: kSecondaryLightE0E,
                          fontSize: 16,
                          fontWeight: kbold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  child,
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 15,
          right: 5,
          child: Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: kSecondaryBlack4A4,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              cantidad.toString(),
              style: TextStyle(
                  color: kWhiteColor, fontSize: 12, fontWeight: kmedium),
            ),
          ),
        )
      ]),
    );
  }
}
