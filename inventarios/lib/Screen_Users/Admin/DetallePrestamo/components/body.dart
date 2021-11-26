// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventarios/components/detalleprestamo_contenido.dart';
import 'package:inventarios/components/rounded_button_icon.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      ListView(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              DetallePrestamo1(),
              Container(
                width: size.width * .85,
                margin: EdgeInsets.symmetric(horizontal: 10),
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
                          width: size.width * .26,
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 15, top: 10),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: size.width * .55,
                                    child: Text("Lizbeth Rivera Ortiz",
                                        style: TextStyle(
                                            fontWeight: kbold,
                                            fontSize: 17,
                                            fontFamily: 'Montserrat',
                                            color: kWhiteColor)),
                                  ),
                                  SizedBox(
                                    width: size.width * .55,
                                    child: Text("NC 19420859",
                                        style: TextStyle(
                                            fontWeight: kbold,
                                            fontSize: 17,
                                            fontFamily: 'Montserrat',
                                            color:
                                                kWhiteColor.withOpacity(.8))),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width * .7,
                          child: Container(
                            padding: EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                                "Ingenieria en sistemas computacionales",
                                style: TextStyle(
                                    fontWeight: kbold,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    color: kWhiteColor)),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        SizedBox(
                          width: size.width * .9,
                          child: Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Text("Semestre 5",
                                style: TextStyle(
                                    fontWeight: kbold,
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    color: kWhiteColor.withOpacity(.8))),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: size.width * .4,
                          child: TextButton(
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 30),
                              decoration: BoxDecoration(
                                color: kPrimaryLight8D9,
                                borderRadius: BorderRadius.circular(19),
                              ),
                              child: Text(
                                "Contactar",
                                style: TextStyle(
                                    color: kPrimaryColor1B3,
                                    fontSize: 12,
                                    fontWeight: kbold),
                              ),
                            ),
                          ),
                        )),
                  )
                ]),
              ),
              DetallePrestamo2()
            ],
          ),
        ),
      ]),
      Positioned(
          bottom: 25,
          right: 20,
          child: RoundedButonIcon(
            text: "Recibido",
            press: () {},
            textcolor: kPrimaryColor1B3,
            color: kPrimaryLight8D9,
            iconcolor: kPrimaryColor1B3,
            icon: Icons.check_circle,
            tamano: .45,
            radius: 15,
            padding: 5,
          ))
    ]);
  }
}
