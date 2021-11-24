// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../constants.dart';

class CardInformationQR extends StatelessWidget {
  const CardInformationQR({
    Key? key,
    required this.onpress,
    required this.nombre,
    required this.numero,
    required this.tipo,
  }) : super(key: key);
  final VoidCallback onpress;
  final String nombre;
  final String numero;
  final String tipo;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: onpress,
      child: Container(
        width: size.width * .85,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kPrimaryColor1B3,
          border: Border.all(
            color: kPrimaryColor1B3,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(children: [
          Positioned(
              top: 0,
              left: 0,
              child: Opacity(
                opacity: .05,
                child: SvgPicture.asset(
                  "assets/icons/Logo.svg",
                  width: size.width * .25,
                ),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: SvgPicture.asset(
                            "assets/icons/Logo.svg",
                            width: size.width * .09,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: size.width * .65,
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: SvgPicture.asset(
                            "assets/icons/nombreTec.svg",
                            width: size.width,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * .55,
                        child: Text("campus Jiquilpan",
                            style: TextStyle(
                                fontWeight: kbold,
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: kPrimaryLightD1D)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: size.width * .9,
                child: Container(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text(nombre,
                      style: TextStyle(
                          fontWeight: kbold,
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          color: kWhiteColor)),
                ),
              ),
              SizedBox(
                width: size.width * .9,
                child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(tipo + " " + numero,
                      style: TextStyle(
                          fontWeight: kmedium,
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          color: kWhiteColor.withOpacity(.8))),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
            ],
          ),
          Positioned(
            top: 60,
            right: 15,
            child: QrImage(
              data: "1234567890",
              version: QrVersions.auto,
              size: 75.0,
              foregroundColor: kWhiteColor.withOpacity(.2),
            ),
          ),
        ]),
      ),
    );
  }
}
