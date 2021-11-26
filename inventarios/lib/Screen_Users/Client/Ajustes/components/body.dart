// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventarios/components/ajustes_contenido.dart';
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
    return ListView(children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Row(
              children: [
                BotonReturn(),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text("Panel y ajustes",
                      style: TextStyle(
                          fontWeight: kbold,
                          fontSize: 32,
                          fontFamily: 'Roboto',
                          color: kPrimaryLightC6C)),
                ),
              ],
            ),
            SizedBox(
              height: size.height * .05,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                width: size.width,
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
                        opacity: .03,
                        child: SvgPicture.asset(
                          "assets/icons/Logo.svg",
                          width: size.width * .32,
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: size.width * .9,
                          child: Text("Rodrigo Vélez Maldonado",
                              style: TextStyle(
                                  fontWeight: kbold,
                                  fontSize: 17,
                                  fontFamily: 'Montserrat',
                                  color: kWhiteColor)),
                        ),
                        Container(
                          width: size.width * .9,
                          padding: EdgeInsets.only(top: 3),
                          child: Text("NC 19420859",
                              style: TextStyle(
                                  fontWeight: kmedium,
                                  fontSize: 17,
                                  fontFamily: 'Montserrat',
                                  color: kWhiteColor.withOpacity(.8))),
                        ),
                        Container(
                          width: size.width * .5,
                          padding: EdgeInsets.only(top: 15),
                          child: Text("Ingeniería en sistemas computacionales",
                              style: TextStyle(
                                  fontWeight: kmedium,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  color: kWhiteColor.withOpacity(.8))),
                        ),
                        Container(
                          width: size.width * .9,
                          padding: EdgeInsets.only(top: 3),
                          child: Text("Semestre 5",
                              style: TextStyle(
                                  fontWeight: kmedium,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  color: kWhiteColor.withOpacity(.8))),
                        ),
                        SizedBox(
                          height: size.height * .05,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 15,
                    child: QrImage(
                      data: "1234567890",
                      version: QrVersions.auto,
                      size: 120.0,
                      foregroundColor: kWhiteColor,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: size.height * .015,
            ),
            AjustesContenido()
          ],
        ),
      ),
    ]);
  }
}
