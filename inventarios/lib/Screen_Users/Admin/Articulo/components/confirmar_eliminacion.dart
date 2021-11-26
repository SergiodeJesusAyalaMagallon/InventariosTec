// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/components/rounded_button.dart';
import 'package:inventarios/constants.dart';

class EliminacionPop extends StatelessWidget {
  const EliminacionPop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Hero(
            tag: "eliminar-articulo-hero",
            child: Material(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: SingleChildScrollView(
                  child: Container(
                    width: 350,
                    height: 400,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: kSecondaryBlack2E2,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        Container(
                          width: 280,
                          height: 220,
                          decoration: BoxDecoration(
                              color: kSecondaryBlack4A4,
                              borderRadius: BorderRadius.circular(16)),
                          child: Image.asset(
                            "assets/images/arduinouno.png",
                            scale: .2,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 25, left: 5),
                          child: Text(
                              "¿Estas seguro de eliminar Placa Arduino?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                  fontFamily: 'Montserrat',
                                  color: kSecondaryLightE0E)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              text: "No eliminar",
                              press: () {
                                Navigator.pop(context);
                              },
                              color: Color(0xFF4B4B4B),
                              textcolor: kSecondaryLightE0E,
                              radius: 10,
                              tamano: .35,
                              paddingH: 0,
                              paddingV: 0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: RoundedButton(
                                text: "Eliminar",
                                press: () {},
                                color: kPrimaryLight8D9,
                                textcolor: kPrimaryColor1B3,
                                radius: 10,
                                tamano: .35,
                                paddingH: 0,
                                paddingV: 0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          )),
    );
  }
}
