// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/Screens/NuevoPrestamo/nuevo_prestamo_screen.dart';
import 'package:inventarios/components/hero_dialog_route.dart';
import 'package:inventarios/components/rounded_button_icon.dart';
import 'package:inventarios/constants.dart';

class BotonFlotante extends StatelessWidget {
  const BotonFlotante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "eliminar-articulo-hero",
      child: RoundedButonIcon(
        text: "Nuevo préstamo",
        press: () {
          Navigator.of(context).push(HeroDialogRoute(
            builder: (context) {
              return const PopMenu();
            },
          ));
        },
        textcolor: kPrimaryColor1B3,
        color: kPrimaryLight8D9,
        iconcolor: kPrimaryColor1B3,
        icon: Icons.add_circle_rounded,
        tamano: .5,
        radius: 15,
        padding: 5,
      ),
    );
  }
}

class PopMenu extends StatelessWidget {
  const PopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          SizedBox(
            height: size.height * .73,
          ),
          RoundedButonIcon(
            text: "Escanear código",
            press: () {},
            textcolor: kPrimaryColor1B3,
            color: kPrimaryLight8D9,
            iconcolor: kPrimaryColor1B3,
            icon: Icons.qr_code_sharp,
            tamano: .5,
            radius: 15,
            padding: 5,
          ),
          RoundedButonIcon(
            text: "Crear préstamo",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NuevoPrestamoScreen();
              }));
            },
            textcolor: kPrimaryColor1B3,
            color: kPrimaryLight8D9,
            iconcolor: kPrimaryColor1B3,
            icon: Icons.add_circle_rounded,
            tamano: .5,
            radius: 15,
            padding: 5,
          ),
          Container(
            margin: EdgeInsets.only(left: 120),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Transform.rotate(
                angle: 3.9,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: kPrimaryLight8D9,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.add_circle_rounded,
                    color: kPrimaryColor1B3,
                    size: 40,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
