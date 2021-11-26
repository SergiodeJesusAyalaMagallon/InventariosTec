// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';

class TarjetaVariante extends StatelessWidget {
  const TarjetaVariante({
    Key? key,
    required this.variable,
    this.ruta = "",
    required this.active,
    this.numero = "",
    this.admin = false,
  }) : super(key: key);
  final String variable;
  final String ruta;
  final bool active;
  final bool admin;
  final String numero;

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
                  color: kSecondaryBlack2E2,
                  borderRadius: BorderRadius.circular(12)),
              width: size.width * .9,
              height: 50,
              child: admin == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(variable,
                            style: TextStyle(
                                fontWeight: kbold,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                color: kSecondaryLightE0E)),
                        Container(
                          width: 40,
                          height: 35,
                          margin: EdgeInsets.only(left: 60, right: 15),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: kSecondaryBlack4A4,
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(numero,
                              style: TextStyle(
                                  fontWeight: kbold,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  color: kSecondaryLightE0E)),
                        )
                      ],
                    )
                  : Text(variable,
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
                  child: admin == true
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(variable,
                                style: TextStyle(
                                    fontWeight: kbold,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    color: kSecondaryLightE0E)),
                            Container(
                              width: 40,
                              height: 35,
                              margin: EdgeInsets.only(left: 60, right: 15),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: kSecondaryBlack4A4,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(numero,
                                  style: TextStyle(
                                      fontWeight: kbold,
                                      fontSize: 15,
                                      fontFamily: 'Montserrat',
                                      color: kSecondaryLightE0E)),
                            )
                          ],
                        )
                      : Text(variable,
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
