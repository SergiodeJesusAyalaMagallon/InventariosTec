// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/Screen_Users/Client/Articulo/articulo_screen.dart';
import 'package:inventarios/components/anadir_articulo_contenido.dart';
import 'package:inventarios/components/boton_rect.dart';
import 'package:inventarios/components/boton_return.dart';

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
            AnadirArticuloContenido(redirigir: ArticuloScreen())
          ],
        ),
      ),
    ]);
  }
}
