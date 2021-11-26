// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/constants.dart';

class ArticuloContenido extends StatelessWidget {
  const ArticuloContenido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height * .39,
          decoration: BoxDecoration(
            color: kSecondaryBlack252,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35)),
          ),
          child: Image.asset(
            "assets/images/arduinouno.png",
            scale: .1,
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text("Placa Arduino",
                          style: TextStyle(
                              fontWeight: kbold,
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              color: kSecondaryLightE0E)),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            color: kSecondaryLightE0E)),
                  ),
                ]))
      ],
    );
  }
}
