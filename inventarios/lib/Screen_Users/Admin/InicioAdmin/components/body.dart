// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/Screen_Users/Admin/BorradorScreen/borrador_screen.dart';
import 'package:inventarios/Screen_Users/Admin/CardBigScreen/card_big_screen.dart';
import 'package:inventarios/Screens/Ajustes/ajustes_screen.dart';
import 'package:inventarios/Screens/NotifiScreen/notifi_screen.dart';
import 'package:inventarios/components/borradores_container.dart';
import 'package:inventarios/components/button_notifi.dart';
import 'package:inventarios/components/card_information_qr.dart';
import 'package:inventarios/components/card_presentacion.dart';
import 'package:inventarios/components/floating_button.dart';
import 'package:inventarios/components/prestamos_container.dart';

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
        ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      width: size.width * .7,
                                      child: Text("Hola Fernando",
                                          style: TextStyle(
                                              fontWeight: kbold,
                                              fontSize: 32,
                                              fontFamily: 'Roboto',
                                              color: kPrimaryLightC6C)),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.005,
                                    ),
                                    SizedBox(
                                      width: size.width * .7,
                                      child: Text("¿Qué haremos hoy?",
                                          style: TextStyle(
                                              fontWeight: kmedium,
                                              fontSize: 20,
                                              fontFamily: 'Roboto',
                                              color: kSecondaryLight818)),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return AjustesScreen();
                                    }));
                                  },
                                  child: SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 10,
                                          child: CircleAvatar(
                                            backgroundColor: kPrimaryLight8D9,
                                            child: const Text('FG'),
                                            foregroundColor: kPrimaryColor1B3,
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          top: 0,
                                          child: Container(
                                              padding: EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  color: kPrimaryColor1B3,
                                                  shape: BoxShape.circle),
                                              child: Icon(
                                                Icons.settings,
                                                color: kPrimaryLight8D9,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          ButtonNotifi(
                            notificaciones: 3,
                            onpress: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return NotifiScreen();
                              }));
                            },
                          ),
                          SizedBox(
                            height: size.height * 0.035,
                          ),
                          CardInformationQR(
                            onpress: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return CardBigScreen();
                              }));
                            },
                            nombre: 'Fernando García González',
                            numero: '19420859',
                            tipo: 'NT',
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          CardPresentacion(
                              titulo: "Controla inventarios",
                              contexto:
                                  "Lleva la gestión completa de los inventarios y materiales de laboratorio",
                              textoboton: "Laboratorios",
                              icono: Icons.science_rounded,
                              ruta: "assets/icons/matraz.svg"),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          SizedBox(
                            width: size.width * .85,
                            child: Text("Plantillas",
                                style: TextStyle(
                                    fontWeight: kmedium,
                                    fontSize: 19,
                                    fontFamily: 'Roboto',
                                    color: kSecondaryLight818)),
                          ),
                          SizedBox(
                            height: size.height * 0.003,
                          ),
                          SizedBox(
                            width: size.width * .85,
                            child: Text(
                                "¡No pierdas tu tiempo repitiendo llenados!",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    color: kSecondaryLight818)),
                          ),
                          SizedBox(
                            height: size.height * 0.010,
                          ),
                          BorradoresContainer(
                            onpress: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return BorradorScreen();
                              }));
                            },
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          SizedBox(
                            width: size.width * .85,
                            child: Text("Últimos préstamos",
                                style: TextStyle(
                                    fontWeight: kmedium,
                                    fontSize: 19,
                                    fontFamily: 'Roboto',
                                    color: kSecondaryLight818)),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          PrestamosContainer(
                            tituloprestamo: 'Prestamos de redes',
                            codigoprestamo: 'ITJ-RD210829',
                            dia: '09',
                            mes: 'NOV',
                            ano: '2021',
                            estatus: 'Entrega retrasada',
                            retrasado: true,
                          ),
                          PrestamosContainer(
                            tituloprestamo:
                                'Material para practica de laboratorio',
                            codigoprestamo: 'ITJ-EL210852',
                            dia: '25',
                            mes: 'NOV',
                            ano: '2021',
                            estatus: '¡Se entrega mañana!',
                            retrasado: false,
                          ),
                          PrestamosContainer(
                            tituloprestamo: 'Teclado y mouse',
                            codigoprestamo: 'ITJ-WB210852',
                            dia: '11',
                            mes: 'NOV',
                            ano: '2021',
                            estatus: 'Entregado el jueves',
                            retrasado: false,
                          ),
                          SizedBox(
                            height: size.height * 0.005,
                          ),
                          SizedBox(
                            width: size.width * .85,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Ver todos los préstamos",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: 16,
                                      fontWeight: kmedium),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: kSecondaryBlack4B4,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 40),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          CardPresentacion(
                              titulo: "Toma el control",
                              contexto:
                                  "Desde aquí se pueden gestionar los usuarios y sus permisos dentro de la aplicación",
                              textoboton: "Panel de usuarios",
                              icono: Icons.supervised_user_circle_rounded,
                              ruta: "assets/icons/supervised.svg"),
                          SizedBox(
                            height: size.height * 0.12,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(bottom: 10, right: 10, child: FloatButton())
      ],
    );
  }
}
