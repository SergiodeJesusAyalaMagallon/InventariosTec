// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventarios/components/boton_rect.dart';
import 'package:inventarios/components/boton_return.dart';
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
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: size.height * .08,
              ),
              Row(
                children: [
                  BotonReturn(),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    width: size.width * .27,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("Nuevo préstamo",
                            style: TextStyle(
                                fontWeight: kmedium,
                                fontSize: 24,
                                fontFamily: 'Roboto',
                                color: kWhiteColor)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * .15,
                  ),
                  BotonRect(
                      icon: Icons.delete_rounded,
                      color: kSecondaryLight202,
                      bordercolor: kPrimaryLight8D9,
                      iconcolor: kPrimaryLight8D9),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: BotonRect(
                        icon: Icons.save_rounded,
                        color: kPrimaryLight8D9,
                        bordercolor: kPrimaryLight8D9,
                        iconcolor: kPrimaryColor1B3),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .05,
              ),
              SizedBox(
                width: size.width * .85,
                child: Text("¿Qué nombre le ponemos?",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: kWhiteColor,
                        fontWeight: kbold)),
              ),
              SizedBox(
                height: size.height * .013,
              ),
              Container(
                width: size.width * .85,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                decoration: BoxDecoration(
                  color: kSecondaryBlack2E2,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.label_important_rounded,
                      color: kSecondaryBlack575,
                    ),
                    Container(
                      width: size.width * .5,
                      margin: EdgeInsets.only(left: 20),
                      child: TextField(
                        style: TextStyle(color: kWhiteColor, fontSize: 16),
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: kWhiteColor.withOpacity(.3),
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: kbold),
                            hintText: "Préstamo Lab. de electrónica",
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .06,
              ),
              SizedBox(
                width: size.width * .85,
                child: Text("Materiales a solicitar:",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: kWhiteColor,
                        fontWeight: kbold)),
              ),
              SizedBox(
                height: size.height * .075,
              ),
              SvgPicture.asset(
                "assets/icons/fondo_vacio_prestamo.svg",
                width: size.width * .65,
              ),
            ],
          ),
        ),
      ]),
      Positioned(
          bottom: 35,
          width: size.width,
          child: Center(
              child: RoundedButonIcon(
            text: "Añadir un artículo",
            press: () {},
            textcolor: kPrimaryColor1B3,
            color: kPrimaryLight8D9,
            iconcolor: kPrimaryColor1B3,
            icon: Icons.add_circle_rounded,
            tamano: .85,
            radius: 15,
            padding: 5,
          )))
    ]);
  }
}
