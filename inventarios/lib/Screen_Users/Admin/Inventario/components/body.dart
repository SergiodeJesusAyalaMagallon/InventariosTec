// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/Screen_Users/Admin/AltaMaterial/alta_material.dart';
import 'package:inventarios/Screen_Users/Admin/Articulo/articulo_screen.dart';
import 'package:inventarios/components/anadir_articulo_contenido.dart';
import 'package:inventarios/components/boton_rect.dart';
import 'package:inventarios/components/boton_return.dart';
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
                    margin: EdgeInsets.only(left: 20),
                    width: size.width * .58,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("Inventario",
                            style: TextStyle(
                                fontWeight: kbold,
                                fontSize: 32,
                                fontFamily: 'Roboto',
                                color: kPrimaryLightC6C)),
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
              AnadirArticuloContenido(
                  redirigir: ArticuloScreen(
                client: false,
              ))
            ],
          ),
        ),
      ]),
      Positioned(
        bottom: 10,
        right: 10,
        child: RoundedButonIcon(
          text: "Agregar material",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AltaMaterialScreen();
            }));
          },
          textcolor: kPrimaryColor1B3,
          color: kPrimaryLight8D9,
          iconcolor: kPrimaryColor1B3,
          icon: Icons.add_circle_rounded,
          tamano: .5,
          radius: 15,
          padding: 2,
        ),
      )
    ]);
  }
}
