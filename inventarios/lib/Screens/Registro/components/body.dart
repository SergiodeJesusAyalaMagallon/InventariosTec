// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inventarios/Screens/ConfirmacionCorreo/confirmacion_correo.dart';
import 'package:inventarios/components/rounded_button.dart';
import 'package:inventarios/components/rounded_input_field.dart';
import 'package:inventarios/components/rounded_password.dart';
import 'package:inventarios/components/social_icon.dart';
import 'package:inventarios/components/text_field_container.dart';

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
                height: size.height * 0.12,
              ),
              Text("Ya casi Rodrigo...",
                  style: TextStyle(
                      fontWeight: kbold,
                      fontSize: 32,
                      fontFamily: 'Roboto',
                      color: kWhiteColor)),
              SizedBox(
                height: size.height * 0.005,
              ),
              Text("Sólo una cosa más",
                  style: TextStyle(
                      fontWeight: kmedium,
                      fontSize: 20,
                      color: kSecondaryLightB7B)),
              SizedBox(
                height: size.height * 0.08,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: Text("Correo electrónico",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kWhiteColor)),
              ),
              RoundedInputField(
                hinText: "ejemplo@mail.com",
                icon: Icons.alternate_email_rounded,
                onChanged: (value) {},
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: Text("Contraseña",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kWhiteColor)),
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: Text("Confirma tu contraseña",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kWhiteColor)),
              ),
              TextFieldContainer(
                  child: TextField(
                obscureText: true,
                onChanged: (value) {},
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, .3),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: kmedium),
                    hintText: "Escríbela de nuevo",
                    suffixIcon: Icon(
                      Icons.vpn_key_rounded,
                      color: kWhiteColor,
                    ),
                    border: InputBorder.none),
              )),
              SizedBox(
                height: size.height * 0.04,
              ),
              RoundedButton(
                text: "Registrar cuenta",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ConfirmacionCorreo();
                  }));
                },
                color: kPrimaryLight8D9,
                textcolor: kPrimaryColor1B3,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text("O registrate con una red social:",
                  style: TextStyle(
                      fontWeight: kmedium,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      color: kSecondaryLightB7B)),
              SizedBox(
                height: size.height * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.all(19),
                      decoration: BoxDecoration(
                          color: kSecondaryBlack4B4, shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  Socalicon(
                    iconsrc: "assets/icons/google.svg",
                    press: () {},
                  ),
                  Socalicon(
                    iconsrc: "assets/icons/apple.svg",
                    press: () {},
                  ),
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
