// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/constants.dart';

class AlreadyHaveAnAccountChek extends StatelessWidget {
  final bool login;
  final GestureTapCallback press;
  const AlreadyHaveAnAccountChek({
    Key? key,
    required this.login,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(login ? "¿No tienes una cuenta?" : "¿Ya tienes una cuenta?",
            style: TextStyle(
                fontWeight: kbold, fontSize: 16, color: kSecondaryLightB7B)),
        SizedBox(
          height: size.height * 0.005,
        ),
        GestureDetector(
          onTap: press,
          child: Text(login ? "Regístrate" : "Inicia sesión",
              style: TextStyle(
                  fontWeight: kmedium, fontSize: 19, color: kWhiteColor)),
        )
      ],
    );
  }
}
