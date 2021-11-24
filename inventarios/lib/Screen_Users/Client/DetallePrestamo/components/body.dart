// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventarios/components/boton_rect.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/extra.dart';
import 'package:inventarios/components/fecha_prestamo.dart';
import 'package:inventarios/components/material_conatiner.dart';
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
              SizedBox(
                height: size.height * .08,
              ),
              Row(
                children: [
                  BotonReturn(),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: size.width * .58,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("Préstamo ITJWB0125",
                            style: TextStyle(
                                fontWeight: kmedium,
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                color: kWhiteColor)),
                      ],
                    ),
                  ),
                  BotonRect(
                      icon: Icons.delete_rounded,
                      color: kSecondaryLight202,
                      bordercolor: kPrimaryLight8D9,
                      iconcolor: kPrimaryLight8D9),
                ],
              ),
              SizedBox(
                height: size.height * .05,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: FechaPrestamo()),
              SizedBox(
                height: size.height * .05,
              ),
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
              SizedBox(
                height: size.height * .05,
              ),
              SizedBox(
                width: size.width * .85,
                child: Text("Materiales solicitados:",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: kWhiteColor,
                        fontWeight: kbold)),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              MaterialContainer(
                titulo: "Módulo SIM900",
                url: "assets/images/sim900.png",
                editable: true,
                cantidad: "1",
                recibido: true,
              ),
              MaterialContainer(
                titulo: "Diodo emisor de luz (LED)",
                url: "assets/images/let.png",
                child: Extra(extra: "Color verde"),
                editable: true,
                cantidad: "3",
                recibido: true,
              ),
              MaterialContainer(
                titulo: "Placa Arduino",
                url: "assets/images/arduinouno.png",
                child: Extra(extra: "Arduino UNO R3"),
                editable: true,
                cantidad: "1",
                recibido: true,
              ),
              MaterialContainer(
                titulo: "Resistencia",
                url: "assets/images/resistencia.png",
                child: Extra(extra: "330 ohms"),
                editable: true,
                cantidad: "3",
                recibido: true,
              ),
              MaterialContainer(
                titulo: "Protoboard, placa de programacion",
                url: "assets/images/Protoboard.png",
                child: Extra(extra: "400 pts"),
                editable: true,
                cantidad: "1",
                recibido: true,
              ),
              SizedBox(
                height: size.height * .15,
              )
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
