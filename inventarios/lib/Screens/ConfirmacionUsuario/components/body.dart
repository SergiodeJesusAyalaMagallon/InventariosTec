// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:inventarios/Screens/Registro/registro_screen.dart';
import 'package:inventarios/Screens/ConfirmacionUsuario/components/card_information.dart';
import 'package:inventarios/components/rounded_button.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                height: size.height * 0.2,
              ),
              SizedBox(
                width: size.width * .9,
                child: Text("¿Eres tu?",
                    style: TextStyle(
                        fontWeight: kbold,
                        fontSize: 32,
                        fontFamily: 'Roboto',
                        color: kWhiteColor)),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                width: size.width * .9,
                child: Text("Encontramos esta información",
                    style: TextStyle(
                        fontWeight: kmedium,
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        color: kSecondaryLightB7B)),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                width: size.width * 0.94,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Card_information(),
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              RoundedButton(
                  text: "Sí, es mi informacion",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegistroScreen();
                    }));
                  },
                  color: kPrimaryLight8D9,
                  textcolor: kPrimaryColor1B3),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                  text: "No, estos no son mis datos",
                  press: () {},
                  color: kSecondaryBlack4B4,
                  textcolor: kWhiteColor)
            ],
          ),
        ],
      ),
    );
  }
}
