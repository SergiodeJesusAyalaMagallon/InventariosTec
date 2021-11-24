// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/Screens/ConfirmacionUsuario/confirmacion_usuario.dart';
import 'package:inventarios/Screens/LandingPage/landing_page.dart';
import 'package:inventarios/components/already_have_an_account_check.dart';
import 'package:inventarios/components/photo_tec.dart';
import 'package:inventarios/components/rounded_button.dart';
import 'package:inventarios/components/rounded_input_field.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PhotoTec(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.2,
            ),
            Text("Bienvenido",
                style: TextStyle(
                    fontWeight: kbold, fontSize: 32, color: kWhiteColor)),
            SizedBox(
              height: size.height * 0.005,
            ),
            Text("Comencemos con el registro",
                style: TextStyle(
                    fontWeight: kmedium,
                    fontSize: 20,
                    color: kSecondaryLightB7B)),
            SizedBox(
              height: size.height * 0.15,
            ),
            SizedBox(
              width: size.width * 0.8,
              child: Text("Cuál es tu número de control/tarjeta",
                  style: TextStyle(
                      fontWeight: kbold, fontSize: 16, color: kWhiteColor)),
            ),
            RoundedInputField(
              hinText: "AA420XXX",
              icon: Icons.person_rounded,
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "Siguiente",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ConfirmacionUsuario();
                }));
              },
              color: kPrimaryColor1B3,
              textcolor: kWhiteColor,
            ),
            SizedBox(
              height: size.height * 0.25,
            ),
            AlreadyHaveAnAccountChek(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LandingPage();
                }));
              },
              login: false,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
