// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/components/boton_rect.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/extra.dart';
import 'package:inventarios/components/fecha_prestamo.dart';
import 'package:inventarios/components/material_conatiner.dart';
import 'package:inventarios/constants.dart';

class DetallePrestamo1 extends StatelessWidget {
  const DetallePrestamo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
      ],
    );
  }
}

class DetallePrestamo2 extends StatelessWidget {
  const DetallePrestamo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
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
    );
  }
}
