// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/components/rounded_button.dart';

import '../constants.dart';

class PopVariante extends StatelessWidget {
  const PopVariante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                    height: 450,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: kSecondaryBlack2E2,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                color: kSecondaryBlack252,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Image.asset(
                                "assets/images/let.png",
                                scale: .5,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 18),
                              child: Column(
                                children: [
                                  RoundedButton(
                                    text: "Cargar imagen",
                                    press: () {},
                                    color: kSecondaryBlack4B4,
                                    textcolor: kWhiteColor,
                                    tamano: .35,
                                    fontsize: 16,
                                    paddingH: 0,
                                    paddingV: 0,
                                    radius: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: RoundedButton(
                                      text: "Eliminar",
                                      press: () {},
                                      color: kSecondaryBlack4B4,
                                      textcolor: kWhiteColor,
                                      tamano: .35,
                                      fontsize: 16,
                                      paddingH: 0,
                                      paddingV: 0,
                                      radius: 10,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 15, top: 20),
                          child: Text("¿Qué nombre le ponemos?",
                              style: TextStyle(
                                  fontWeight: kmedium,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  color: kWhiteColor)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                              color: kSecondaryBlack252,
                              borderRadius: BorderRadius.circular(15)),
                          child: TextField(
                              style:
                                  TextStyle(color: kWhiteColor, fontSize: 16),
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: kWhiteColor.withOpacity(.3),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: kmedium),
                                  hintText: "Nombre de la variante",
                                  suffixIcon: Icon(
                                    Icons.label_rounded,
                                    color: kWhiteColor.withOpacity(.3),
                                  ),
                                  border: InputBorder.none)),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 15, top: 10),
                          child: Text("Cantidad",
                              style: TextStyle(
                                  fontWeight: kmedium,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  color: kWhiteColor)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                              color: kSecondaryBlack252,
                              borderRadius: BorderRadius.circular(15)),
                          child: TextField(
                              style:
                                  TextStyle(color: kWhiteColor, fontSize: 16),
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: kWhiteColor.withOpacity(.3),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: kmedium),
                                  hintText: "Cantidad inicial",
                                  border: InputBorder.none)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
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
                                  text: "Agregar",
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
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          )),
    );
  }
}
