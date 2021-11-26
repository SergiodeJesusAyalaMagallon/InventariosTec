// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:inventarios/components/card_articulo.dart';
import 'package:inventarios/components/variante.dart';
import 'package:inventarios/constants.dart';

class AnadirArticuloContenido extends StatelessWidget {
  const AnadirArticuloContenido({
    Key? key,
    required this.redirigir,
  }) : super(key: key);

  final Widget redirigir;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * .04,
        ),
        Container(
          width: size.width * .85,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
            color: kSecondaryBlack2E2,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search_rounded,
                color: kWhiteColor,
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
                      hintText: "Busquemos materiales",
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * .02,
        ),
        CardArticulo(
          url: "assets/images/arduinouno.png",
          titulo: "Placa Arduino",
          extra: Variante(extra: "3 variantes disponibles"),
          onPress: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return redirigir;
            }));
          },
        ),
        CardArticulo(
          url: "assets/images/arduinouno.png",
          titulo: "Placa Arduino",
          extra: Variante(extra: "3 variantes disponibles"),
          onPress: () {},
        ),
        CardArticulo(
          url: "assets/images/resistencia.png",
          titulo: "Resistencia",
          extra: Variante(extra: "28 variantes disponibles"),
          onPress: () {},
        ),
        CardArticulo(
          url: "assets/images/sim900.png",
          titulo: "Módulo SIM900",
          onPress: () {},
        ),
      ],
    );
  }
}
