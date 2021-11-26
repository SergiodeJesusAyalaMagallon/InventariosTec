// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventarios/Screen_Users/Client/ConfirmacionPrestamo/components/material_container_final.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/extra.dart';
import 'package:inventarios/components/rounded_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(alignment: Alignment.center, children: [
      ListView(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Row(
                children: [
                  BotonReturn(),
                  Container(
                    width: size.width * .7,
                    margin: EdgeInsets.only(left: 30),
                    child: Text("Práctica 18. Módulo SIM900 ",
                        style: TextStyle(
                            fontWeight: kmedium,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            color: kPrimaryLightC6C)),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .03,
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
                            width: size.width * .35,
                          ),
                        )),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                            child: Text(
                                "Ingeniería en sistemas computacionales",
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
                height: size.height * .05,
              ),
              SizedBox(
                  width: size.width * .85,
                  child: Row(
                    children: [
                      Text("Fecha de entrega:",
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Roboto',
                              color: kWhiteColor,
                              fontWeight: kbold)),
                      Container(
                          margin: EdgeInsets.only(left: 44),
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                            color: kSecondaryBlack333,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text("02",
                                  style: TextStyle(
                                      fontWeight: kbold,
                                      fontSize: 29,
                                      fontFamily: 'Montserrat',
                                      color: kWhiteColor)),
                              Text("NOV",
                                  style: TextStyle(
                                      fontWeight: kbold,
                                      fontSize: 15,
                                      fontFamily: 'Montserrat',
                                      color: kWhiteColor.withOpacity(.55))),
                              Text("2021",
                                  style: TextStyle(
                                      fontWeight: kbold,
                                      fontSize: 15,
                                      fontFamily: 'Montserrat',
                                      color: kWhiteColor.withOpacity(.3))),
                            ],
                          )),
                    ],
                  )),
              SizedBox(
                height: size.height * .05,
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
                height: size.height * .02,
              ),
              MaterialContainerFinal(
                titulo: "Módulo SIM900",
                url: "assets/images/sim900.png",
                cantidad: 1,
              ),
              MaterialContainerFinal(
                titulo: "Diodo emisor de luz (LED)",
                url: "assets/images/let.png",
                child: Extra(extra: "Color verde"),
                cantidad: 4,
              ),
              MaterialContainerFinal(
                titulo: "Placa Arduino",
                url: "assets/images/arduinouno.png",
                child: Extra(extra: "Arduino UNO R3"),
                cantidad: 1,
              ),
              MaterialContainerFinal(
                titulo: "Resistencia",
                url: "assets/images/resistencia.png",
                child: Extra(extra: "330 ohms"),
                cantidad: 6,
              ),
              MaterialContainerFinal(
                titulo: "Protoboard, placa de programacion",
                url: "assets/images/Protoboard.png",
                child: Extra(extra: "400 pts"),
                cantidad: 1,
              ),
              SizedBox(
                height: size.height * .1,
              ),
            ],
          ),
        ),
      ]),
      Positioned(
          bottom: 10,
          child: RoundedButton(
            text: "Confirmar",
            press: () {},
            color: kPrimaryLight8D9,
            textcolor: kPrimaryColor1B3,
            tamano: .92,
          ))
    ]);
  }
}
