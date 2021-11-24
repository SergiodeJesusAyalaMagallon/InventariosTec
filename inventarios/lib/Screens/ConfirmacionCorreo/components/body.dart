// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventarios/Screen_Users/Client/InicioAlumnos/inicio_alumnos_screen.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/pin_code.dart';
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
      child: Stack(alignment: Alignment.center, children: <Widget>[
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  BotonReturn(),
                ],
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: SvgPicture.asset(
                  "assets/images/mona.svg",
                  width: size.width * .7,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text("Enviamos un código a tu correo",
                  style: TextStyle(
                      fontWeight: kmedium,
                      fontSize: 20,
                      color: kSecondaryLightB7B)),
              SizedBox(
                height: size.height * 0.005,
              ),
              Text("rodrigovelez@gmail.com",
                  style: TextStyle(
                      fontWeight: kmedium,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      color: kWhiteColor)),
              SizedBox(
                height: size.height * 0.05,
              ),
              PinCodeVerification(),
              SizedBox(
                height: size.height * 0.06,
              ),
              RoundedButton(
                text: "Verificar código",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return InicioAlumnosScreen();
                  }));
                },
                color: kPrimaryLight8D9,
                textcolor: kPrimaryColor1B3,
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Column(
                children: [
                  Text("¿No llegó el correo?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: kSecondaryLightBFB)),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text("Reenviar código",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: kWhiteColor)),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
