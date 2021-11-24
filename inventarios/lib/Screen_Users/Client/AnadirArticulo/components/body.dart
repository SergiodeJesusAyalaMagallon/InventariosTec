// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/Screen_Users/Client/Articulo/articulo_screen.dart';
import 'package:inventarios/components/boton_rect.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/card_articulo.dart';
import 'package:inventarios/components/variante.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(children: [
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
                  width: size.width * .55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text("Añadir artículo",
                          style: TextStyle(
                              fontWeight: kmedium,
                              fontSize: 24,
                              fontFamily: 'Roboto',
                              color: kWhiteColor)),
                    ],
                  ),
                ),
                BotonRect(
                    icon: Icons.filter_alt_rounded,
                    color: kSecondaryLight202,
                    bordercolor: kPrimaryLight8D9,
                    iconcolor: kPrimaryLight8D9),
              ],
            ),
            SizedBox(
              height: size.height * .05,
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
                  CardArticulo(
                    url: "assets/images/arduinouno.png",
                    titulo: "Placa Arduino",
                    extra: Variante(extra: "3 variantes disponibles"),
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ArticuloScreen();
                      }));
                    },
                  ),
                  CardArticulo(
                    url: "assets/images/arduinouno.png",
                    titulo: "Placa Arduino",
                    extra: Variante(extra: "3 variantes disponibles"),
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ArticuloScreen();
                      }));
                    },
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
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
