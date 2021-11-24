// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/Screen_Users/Client/NuevoPrestamoVacio/nuevo_prestamo_vacio_screen.dart';
import 'package:inventarios/components/boton_rect.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/card_lab.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: size.height * .06,
          ),
          Row(
            children: [
              BotonReturn(),
              SizedBox(
                width: size.width * .6,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: BotonRect(
                    icon: Icons.help_rounded,
                    color: kPrimaryLight8D9,
                    bordercolor: kPrimaryLight8D9,
                    iconcolor: kPrimaryColor1B3),
              ),
            ],
          ),
          SizedBox(
            height: size.height * .07,
          ),
          Center(
            child: Text("Vamos a solicitar materiales",
                style: TextStyle(
                    fontSize: 17,
                    color: kPrimaryLight8D9,
                    fontWeight: kmedium)),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 5),
              child: Text("¿De qué laboratorio?",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Roboto',
                      color: kWhiteColor,
                      fontWeight: kmedium)),
            ),
          ),
          SizedBox(
            height: size.height * .05,
          ),
          CardLab(
            urlimg: "assets/icons/electronica.svg",
            texto: "Electrónica",
            fondo: "assets/icons/fondo_ele.svg",
            onPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NuevoPrestamoVacioScreen();
              }));
            },
          ),
          CardLab(
            urlimg: "assets/icons/mundo.svg",
            texto: "Redes",
            fondo: "assets/icons/fondo_redes.svg",
            onPress: () {},
          ),
          CardLab(
            urlimg: "assets/icons/prog.svg",
            texto: "Prog. Web",
            fondo: "assets/icons/fondo_progra.svg",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
