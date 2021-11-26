// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/rounded_button_icon.dart';
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
                child: Text("Compartir",
                    style: TextStyle(
                        fontWeight: kmedium,
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        color: kWhiteColor)),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Container(
            width: size.width * .9,
            decoration: BoxDecoration(
              color: kSecondaryBlack2E2,
              border: Border.all(
                color: kSecondaryBlack2E2,
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
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
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
                      margin: EdgeInsets.only(top: 35, left: 10),
                      child: Text("Práctica 18. Módulo SIM900",
                          style: TextStyle(
                              fontWeight: kbold,
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              color: kWhiteColor)),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Lab. de Electronica",
                          style: TextStyle(
                              fontWeight: kmedium,
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              color: kWhiteColor.withOpacity(.8))),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Center(
                      child: QrImage(
                        data: "1234567890",
                        version: QrVersions.auto,
                        size: 280.0,
                        foregroundColor: kWhiteColor,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButonIcon(
            text: "Compartir enlace",
            press: () {},
            textcolor: kPrimaryColor1B3,
            color: kPrimaryLight8D9,
            iconcolor: kPrimaryColor1B3,
            icon: Icons.share_rounded,
            tamano: .9,
            radius: 10,
            padding: 5,
            fontWeight: kbold,
          )
        ],
      ),
    );
  }
}
