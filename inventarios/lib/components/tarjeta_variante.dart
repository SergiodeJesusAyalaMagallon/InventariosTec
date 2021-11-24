// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';

class TarjetaVariante extends StatelessWidget {
  const TarjetaVariante({
    Key? key,
    required this.variable,
    this.ruta = "",
    required this.active,
  }) : super(key: key);
  final String variable;
  final String ruta;
  final bool active;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: active == true ? 50 : 75,
      margin:
          active == true ? EdgeInsets.only(top: 20) : EdgeInsets.only(top: 0),
      child: active == true
          ? Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: kPrimaryLight546,
                  borderRadius: BorderRadius.circular(12)),
              width: size.width * .9,
              height: 50,
              child: Text(variable,
                  style: TextStyle(
                      fontWeight: kbold,
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      color: kSecondaryLightE0E)),
            )
          : Stack(children: [
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: kSecondaryBlack2E2,
                      borderRadius: BorderRadius.circular(12)),
                  width: size.width * .9,
                  height: 50,
                  child: Text(variable,
                      style: TextStyle(
                          fontWeight: kbold,
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          color: kSecondaryLightE0E)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 10),
                child: Image.asset(
                  ruta,
                ),
              )
            ]),
    );
  }
}
