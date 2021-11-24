// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 80),
      child: Column(
        children: [
          Row(
            children: [
              BotonReturn(),
              Container(
                width: size.width * .57,
                margin: EdgeInsets.only(left: 30),
                child: Text("Esta es tu credencial para prestamos",
                    style: TextStyle(
                        fontWeight: kmedium,
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        color: kWhiteColor)),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Container(
            width: size.width * .9,
            decoration: BoxDecoration(
              color: kPrimaryColor1B3,
              border: Border.all(
                color: kPrimaryColor1B3,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(children: [
              Positioned(
                  top: 50,
                  left: 0,
                  child: Opacity(
                    opacity: .05,
                    child: SvgPicture.asset(
                      "assets/icons/Logo.svg",
                      width: size.width * .8,
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SizedBox(
                              child: Container(
                                padding: EdgeInsets.only(top: 10, left: 10),
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
                                      color: kPrimaryLightC6C)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 10),
                      child: Text("Rodrigo Vélez Maldonado",
                          style: TextStyle(
                              fontWeight: kbold,
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              color: kWhiteColor)),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("NC 19420859",
                          style: TextStyle(
                              fontWeight: kmedium,
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              color: kWhiteColor.withOpacity(.8))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: Text("Ingenieria en Sistemas Computacionales",
                          style: TextStyle(
                              fontWeight: kmedium,
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              color: kWhiteColor.withOpacity(.8))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text("Semestre 5",
                          style: TextStyle(
                              fontWeight: klight,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              color: kWhiteColor.withOpacity(.8))),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Center(
                      child: QrImage(
                        data: "1234567890",
                        version: QrVersions.auto,
                        size: 220.0,
                        foregroundColor: kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Container(
            width: size.width * .78,
            margin: EdgeInsets.only(top: 30),
            child: Text(
                "Pide material o equipo de laboratorios en el ITJ ¡Solo necesitarás esta credencial y tu firma!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    color: kSecondaryLight818)),
          ),
        ],
      ),
    );
  }
}
