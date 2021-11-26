// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class CardLab extends StatelessWidget {
  const CardLab({
    Key? key,
    required this.urlimg,
    required this.texto,
    required this.fondo,
    required this.onPress,
  }) : super(key: key);
  final String urlimg;
  final String texto;
  final String fondo;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: onPress,
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        width: size.width * .85,
        decoration: BoxDecoration(
          color: kPrimaryColor1B3,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(children: [
          Positioned(
              top: -20,
              left: -20,
              width: size.width,
              child: Center(
                child: SvgPicture.asset(
                  fondo,
                  width: size.width * .5,
                ),
              )),
          Container(
            padding: EdgeInsets.only(left: 30, top: 25, bottom: 25, right: 10),
            child: Row(
              children: [
                SvgPicture.asset(urlimg),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(top: 40),
                  width: size.width * .55,
                  child: Text(texto,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          fontFamily: 'Montserrat',
                          color: kWhiteColor)),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
