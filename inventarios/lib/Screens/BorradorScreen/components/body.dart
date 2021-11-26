// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/Screen_Users/Admin/FechaPrestamo/fecha_prestamo.dart';
import 'package:inventarios/Screen_Users/Client/ConfirmacionPrestamo/confirmacion_prestamo_screen.dart';
import 'package:inventarios/Screens/AnadirArticulo/anadir_articulo_screen.dart';
import 'package:inventarios/Screens/Compartir/compartir_screen.dart';
import 'package:inventarios/components/boton_rect.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/boton_siguiente_paso.dart';
import 'package:inventarios/components/extra.dart';
import 'package:inventarios/components/material_conatiner.dart';
import 'package:inventarios/components/rounded_button_icon.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.admin,
  }) : super(key: key);

  final bool admin;

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
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text("Práctica 18. Módulo SIM900",
                              style: TextStyle(
                                  fontWeight: kbold,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: kSecondaryLightE0E)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .03,
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
              RoundedButonIcon(
                text: 'Añadir otro artículo',
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AnadirArticuloScreen();
                  }));
                },
                textcolor: kSecondaryLightE0E,
                color: kSecondaryBlack4B4,
                iconcolor: kSecondaryLightE0E,
                icon: Icons.add_circle_rounded,
                tamano: .85,
                fontWeight: kbold,
                radius: 15,
                margintop: 5,
              ),
              SizedBox(
                height: size.height * .02,
              ),
              MaterialContainer(
                titulo: "Módulo SIM900",
                url: "assets/images/sim900.png",
              ),
              MaterialContainer(
                titulo: "Diodo emisor de luz (LED)",
                url: "assets/images/let.png",
                child: Extra(extra: "Color verde"),
              ),
              MaterialContainer(
                titulo: "Placa Arduino",
                url: "assets/images/arduinouno.png",
                child: Extra(extra: "Arduino UNO R3"),
              ),
              MaterialContainer(
                titulo: "Resistencia",
                url: "assets/images/resistencia.png",
                child: Extra(extra: "330 ohms"),
              ),
              MaterialContainer(
                titulo: "Protoboard, placa de programacion",
                url: "assets/images/Protoboard.png",
                child: Extra(extra: "400 pts"),
              ),
              Text("Comparte el préstamo con los demás",
                  style: TextStyle(
                      fontSize: 16, fontFamily: 'Roboto', color: kWhiteColor)),
              SizedBox(
                height: size.height * .01,
              ),
              RoundedButonIcon(
                text: 'Compartir',
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CompartirScreen();
                  }));
                },
                textcolor: kWhiteColor,
                color: kSecondaryBlack4B4,
                iconcolor: kWhiteColor,
                icon: Icons.share_rounded,
                tamano: .85,
                radius: 15,
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
          width: size.width,
          child: BotonSiguiente(
            onpress: admin == true
                ? () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FechaPrestamoScreen();
                    }));
                  }
                : () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ConfirmacionPrestamoScreen();
                    }));
                  },
          ))
    ]);
  }
}
