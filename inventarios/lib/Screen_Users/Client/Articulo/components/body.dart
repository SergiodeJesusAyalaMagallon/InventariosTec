// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/components/articulo_contenido.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/rounded_button_icon.dart';
import 'package:inventarios/components/tarjeta_variante.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            ArticuloContenido(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TarjetaVariante(
                    active: true,
                    variable: "Arduino UNO R3",
                  ),
                  TarjetaVariante(
                    active: false,
                    ruta: "assets/images/arduinomega.png",
                    variable: "Arduino MEGA",
                  ),
                  TarjetaVariante(
                    active: false,
                    ruta: "assets/images/Arduinonano.png",
                    variable: "Arduino NANO",
                  ),
                ],
              ),
            )
          ],
        ),
        Positioned(top: 50, left: 15, child: BotonReturn()),
        Positioned(
          bottom: 0,
          child: Container(
              width: size.width,
              height: size.height * .1,
              decoration: BoxDecoration(
                color: kSecondaryBlack252,
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 50),
                    width: 25,
                    height: 40,
                    decoration: BoxDecoration(
                      color: kSecondaryBlack4A4,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(5),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(5)),
                    ),
                    child: Text("-",
                        style: TextStyle(
                            fontWeight: kbold,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: kWhiteColor)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 5),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: kSecondaryBlack4A4,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text("1",
                        style: TextStyle(
                            fontWeight: kbold,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: kWhiteColor)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 5),
                    width: 25,
                    height: 40,
                    decoration: BoxDecoration(
                      color: kSecondaryBlack4A4,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(10)),
                    ),
                    child: Text("+",
                        style: TextStyle(
                            fontWeight: kbold,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: kWhiteColor)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: RoundedButonIcon(
                        text: "Añadir",
                        press: () {},
                        textcolor: kPrimaryColor1B3,
                        color: kPrimaryLight8D9,
                        iconcolor: kPrimaryColor1B3,
                        icon: Icons.add_circle_rounded,
                        tamano: .42,
                        radius: 15),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
