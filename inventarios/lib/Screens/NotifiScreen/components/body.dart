// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/notifi_container.dart';

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
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                children: [
                  BotonReturn(),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Oye, tienes tres",
                            style: TextStyle(
                                fontWeight: kmedium,
                                fontSize: 25,
                                fontFamily: 'Roboto',
                                color: kSecondaryLight939)),
                        Text("notificaciones",
                            style: TextStyle(
                                fontWeight: kbold,
                                fontSize: 40,
                                fontFamily: 'Roboto',
                                color: kSecondaryLightDED)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              NotificationContainer(
                  tituloNotifi: 'Tu préstamo vencio ayer',
                  description:
                      'Recuerda entregar tus materiales para evitar sanciones',
                  icon: Icons.warning_rounded,
                  color: kPrimaryColor1B3),
              NotificationContainer(
                  tituloNotifi: 'Se realizaron cambio a tu cuenta',
                  description:
                      'Se han modificado tus datos dentro de la aplicación',
                  icon: Icons.app_registration_rounded,
                  color: kPrimaryColor1B3),
              NotificationContainer(
                  tituloNotifi: 'Préstamo acreditado',
                  description:
                      'Se aprobó tu solicitud, recuerda entregar a tiempo tus materiales',
                  icon: Icons.check_circle_rounded,
                  color: kPrimaryColor1B3),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text("Notificaciones vistas",
                  style: TextStyle(
                      fontWeight: kbold,
                      fontSize: 19,
                      fontFamily: 'Roboto',
                      color: kSecondaryLight939)),
              SizedBox(
                height: size.height * 0.04,
              ),
              NotificationContainer(
                  tituloNotifi: 'Se realizaron cambio a tu cuenta',
                  description:
                      'Se han modificado tus datos dentro de la aplicación',
                  icon: Icons.app_registration_rounded,
                  color: kSecondaryBlack252),
              NotificationContainer(
                  tituloNotifi: 'Tu préstamo vencio ayer',
                  description:
                      'Recuerda entregar tus materiales para evitar sanciones',
                  icon: Icons.warning_rounded,
                  color: kSecondaryBlack252),
              NotificationContainer(
                  tituloNotifi: 'Préstamo acreditado',
                  description:
                      'Se aprobó tu solicitud, recuerda entregar a tiempo tus materiales',
                  icon: Icons.check_circle_rounded,
                  color: kSecondaryBlack252),
              SizedBox(
                height: size.height * 0.2,
              ),
            ],
          ),
        ),
      ]),
      Positioned(
          bottom: 45,
          right: 20,
          child: SizedBox(
            width: size.width * .45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.done_all_sharp,
                        color: kPrimaryColor1B3,
                        size: 35,
                      ),
                      Container(
                        width: size.width * .25,
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Marcar todas como vistas",
                          style: TextStyle(
                              color: kPrimaryColor1B3,
                              fontSize: 16,
                              fontWeight: kmedium),
                        ),
                      ),
                    ],
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryLight8D9,
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                ),
              ),
            ),
          )),
    ]);
  }
}
