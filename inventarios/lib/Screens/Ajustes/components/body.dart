// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/Screens/Ajustes/components/child.dart';
import 'package:inventarios/components/border_button.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/card_ajustes.dart';
import 'package:inventarios/components/cuentas_component.dart';
import 'package:inventarios/components/rounded_input_field.dart';
import 'package:inventarios/components/text_field_container.dart';

import '../../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Row(
              children: [
                BotonReturn(),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text("Panel y ajustes",
                      style: TextStyle(
                          fontWeight: kbold,
                          fontSize: 32,
                          fontFamily: 'Roboto',
                          color: kPrimaryLightC6C)),
                ),
              ],
            ),
            SizedBox(
              height: size.height * .05,
            ),
            CardAjustesQR(onpress: () {}),
            SizedBox(
              height: size.height * .015,
            ),
            BorderButton(
                textcolor: kPrimaryLight8D9,
                bordercolor: kPrimaryLight8D9,
                color: kBackground,
                titulo: "Necesito ayuda"),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: size.width * .85,
              child: Text("Datos de acceso",
                  style: TextStyle(
                      fontWeight: kbold,
                      fontSize: 17,
                      fontFamily: 'Montserrat',
                      color: kWhiteColor)),
            ),
            RoundedInputField(
              hinText: "correo****@gmail.com",
              icon: Icons.alternate_email_rounded,
              onChanged: (value) {},
            ),
            TextFieldContainer(
                child: TextField(
              style: TextStyle(color: kWhiteColor, fontSize: 16),
              obscureText: true,
              onChanged: (value) {},
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, .3),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: kmedium),
                  hintText: "*************",
                  suffixIcon: Icon(
                    Icons.vpn_key_rounded,
                    color: kWhiteColor,
                  ),
                  border: InputBorder.none),
            )),
            SizedBox(
              height: size.height * .01,
            ),
            SizedBox(
              width: size.width * 0.85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Cambiar Contraseña",
                    style: TextStyle(
                        color: kPrimaryColor1B3,
                        fontSize: 16,
                        fontWeight: kbold),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryLight8D9,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 10),
              width: size.width * .85,
              child: Text("Cuentas vinculadas",
                  style: TextStyle(
                      fontWeight: kbold,
                      fontSize: 17,
                      fontFamily: 'Montserrat',
                      color: kWhiteColor)),
            ),
            Cuenta(
              icon: "assets/icons/facebook.svg",
              titulo: "Facebook",
              fecha: "19 oct 2020",
              botontit: "Desconectar",
              margin: 30,
              child: Child(user: "Rodrigo Vélez"),
            ),
            Cuenta(
              icon: "assets/icons/google.svg",
              titulo: "Google",
              fecha: "07 ene 2021",
              botontit: "Desconectar",
              margin: 30,
              child: Child(user: "Rodrigo Vélez Maldonado"),
            ),
            Cuenta(
                icon: "assets/icons/apple.svg",
                titulo: "Apple",
                fecha: "Sin vincular",
                margin: 60,
                botontit: "Conectar Apple ID"),
            SizedBox(
              height: size.height * .02,
            ),
            SizedBox(
              width: size.width * .85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: TextButton(
                  onPressed: () {},
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "Cerrar sesión",
                            style: TextStyle(
                                color: kPrimaryColor1B3,
                                fontSize: 16,
                                fontWeight: kbold),
                          ),
                        ),
                        Icon(
                          Icons.logout_rounded,
                          color: kPrimaryColor1B3,
                        ),
                      ],
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryLight8D9,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
          ],
        ),
      ),
    ]);
  }
}
