// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:inventarios/Screen_Users/Admin/Articulo/components/confirmar_eliminacion.dart';
import 'package:inventarios/Screen_Users/Admin/Editar/editar.dart';
import 'package:inventarios/components/articulo_contenido.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/hero_dialog_route.dart';
import 'package:inventarios/components/rounded_button_icon.dart';
import 'package:inventarios/components/tarjeta_variante.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.client,
  }) : super(key: key);
  final bool client;

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
                    admin: true,
                    numero: "13",
                  ),
                  TarjetaVariante(
                    active: false,
                    ruta: "assets/images/arduinomega.png",
                    variable: "Arduino MEGA",
                    admin: true,
                    numero: "4",
                  ),
                  TarjetaVariante(
                    active: false,
                    ruta: "assets/images/Arduinonano.png",
                    variable: "Arduino NANO",
                    admin: true,
                    numero: "7",
                  ),
                ],
              ),
            )
          ],
        ),
        Positioned(top: 50, left: 15, child: BotonReturn()),
        client == false
            ? Positioned(
                bottom: 10,
                child: SizedBox(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(
                          tag: "eliminar-articulo-hero",
                          child: RoundedButonIcon(
                            text: "Borrar",
                            press: () {
                              Navigator.of(context).push(HeroDialogRoute(
                                builder: (context) {
                                  return const EliminacionPop();
                                },
                              ));
                            },
                            textcolor: kWhiteColor,
                            color: kSecondaryBlack4A4,
                            iconcolor: kWhiteColor,
                            icon: Icons.delete_rounded,
                            tamano: .45,
                            radius: 15,
                            padding: 3,
                          ),
                        ),
                        RoundedButonIcon(
                          text: "Editar",
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return EditarScreen();
                            }));
                          },
                          textcolor: kPrimaryColor1B3,
                          color: kPrimaryLight8D9,
                          iconcolor: kPrimaryColor1B3,
                          icon: Icons.edit_rounded,
                          tamano: .45,
                          radius: 15,
                          padding: 3,
                        )
                      ],
                    )),
              )
            : Positioned(child: Column())
      ],
    );
  }
}
