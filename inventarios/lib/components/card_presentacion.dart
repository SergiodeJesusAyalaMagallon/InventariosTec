// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:inventarios/components/rounded_button_icon.dart';

import '../constants.dart';

class CardPresentacion extends StatelessWidget {
  const CardPresentacion({
    Key? key,
    required this.titulo,
    required this.contexto,
    required this.textoboton,
    required this.icono,
    required this.ruta,
  }) : super(key: key);

  final String titulo;
  final String contexto;
  final String textoboton;
  final IconData icono;
  final String ruta;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .85,
      decoration: BoxDecoration(
        color: kSecondaryBlack2E2,
        border: Border.all(
          color: kSecondaryBlack2E2,
          width: 8,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(children: [
        Positioned(
            top: 10,
            right: 0,
            child: Opacity(
              opacity: .05,
              child: SvgPicture.asset(
                ruta,
                width: size.width * .3,
              ),
            )),
        Container(
          padding: EdgeInsets.only(left: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(titulo,
                  style: TextStyle(
                      fontWeight: kbold,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      color: kWhiteColor)),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(contexto,
                    style: TextStyle(
                        fontWeight: kmedium,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        color: kSecondaryLight9D9)),
              ),
              RoundedButonIcon(
                  color: kPrimaryLight8D9,
                  icon: icono,
                  press: () {},
                  text: textoboton,
                  textcolor: kPrimaryColor1B3,
                  iconcolor: kPrimaryColor1B3,
                  tamano: .54,
                  radius: 10,
                  margintop: 5),
            ],
          ),
        ),
      ]),
    );
  }
}
