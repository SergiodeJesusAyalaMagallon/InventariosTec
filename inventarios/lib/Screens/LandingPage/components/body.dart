// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventarios/Screen_Users/Admin/InicioAdmin/inicio_admin_screen.dart';
import 'package:inventarios/Screens/SignUp/signup_screen.dart';
import 'package:inventarios/components/already_have_an_account_check.dart';
import 'package:inventarios/components/photo_tec.dart';
import 'package:inventarios/components/rounded_button.dart';
import 'package:inventarios/components/rounded_input_field.dart';
import 'package:inventarios/components/rounded_password.dart';
import 'package:inventarios/components/social_icon.dart';
import 'package:inventarios/constants.dart';

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
              height: size.height * 0.21,
            ),
            Text("¡Hola!",
                style: TextStyle(
                    fontWeight: kbold, fontSize: 32, color: kWhiteColor)),
            SizedBox(
              height: size.height * 0.005,
            ),
            Text("¡Que gusto tenerte aquí!",
                style: TextStyle(
                    fontWeight: kmedium,
                    fontSize: 20,
                    color: kSecondaryLightBFB)),
            SizedBox(
              height: size.height * 0.08,
            ),
            SizedBox(
              width: size.width * 0.8,
              child: Text("Correo electrónico",
                  style: TextStyle(
                      fontWeight: kbold, fontSize: 16, color: kWhiteColor)),
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
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "Iniciar sesión",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InicioAdminScreen();
                }));
              },
              color: kPrimaryColor1B3,
              textcolor: kWhiteColor,
            ),
            SizedBox(
              height: size.height * 0.06,
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
              height: size.height * 0.045,
            ),
            AlreadyHaveAnAccountChek(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              login: true,
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
