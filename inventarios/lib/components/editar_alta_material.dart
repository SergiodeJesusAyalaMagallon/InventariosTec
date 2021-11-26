// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';

import 'package:inventarios/components/material_container_admin.dart';
import 'package:inventarios/components/nueva_variante.dart';
import 'package:inventarios/components/rounded_button.dart';
import 'package:inventarios/components/rounded_button_icon.dart';

import '../constants.dart';

class EditarAltaMaterial extends StatefulWidget {
  const EditarAltaMaterial({
    Key? key,
    required this.nombre,
    required this.descripcion,
  }) : super(key: key);

  final String nombre;
  final String descripcion;

  @override
  State<EditarAltaMaterial> createState() =>
      _EditarAltaMaterialState(nombre, descripcion);
}

class _EditarAltaMaterialState extends State<EditarAltaMaterial> {
  final nom = TextEditingController();
  final des = TextEditingController();
  final String nombre;
  final String descripcion;

  _EditarAltaMaterialState(this.nombre, this.descripcion) {
    nom.text = nombre;
    des.text = descripcion;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * .03,
        ),
        Row(
          children: [
            Container(
              width: size.width * .5,
              height: 140,
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
                    margin: EdgeInsets.only(top: 10),
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
        SizedBox(
          height: size.height * .05,
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 15),
          child: Text("¿Qué nombre le ponemos?",
              style: TextStyle(
                  fontWeight: kmedium,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  color: kWhiteColor)),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          width: size.width * 0.9,
          decoration: BoxDecoration(
              color: Color(0xFF2E2E2E),
              borderRadius: BorderRadius.circular(15)),
          child: TextField(
              style: TextStyle(color: kWhiteColor, fontSize: 16),
              onChanged: (value) {},
              controller: nom,
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: kWhiteColor.withOpacity(.3),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: kmedium),
                  hintText: "Nombre del material/equipo",
                  suffixIcon: Icon(
                    Icons.label_rounded,
                    color: kWhiteColor.withOpacity(.3),
                  ),
                  border: InputBorder.none)),
        ),
        SizedBox(
          height: size.height * .02,
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 15),
          child: Text("Descripción",
              style: TextStyle(
                  fontWeight: kmedium,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  color: kWhiteColor)),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          width: size.width * 0.9,
          height: 150,
          decoration: BoxDecoration(
              color: Color(0xFF2E2E2E),
              borderRadius: BorderRadius.circular(15)),
          child: TextField(
              controller: des,
              style: TextStyle(color: kWhiteColor, fontSize: 16),
              onChanged: (text) {},
              maxLines: 6,
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: kWhiteColor.withOpacity(.3),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: kmedium),
                  hintText: "Describe el artículo y para qué es utilizado",
                  border: InputBorder.none)),
        ),
        SizedBox(
          height: size.height * .04,
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 15),
          child: Text("Variantes",
              style: TextStyle(
                  fontWeight: kmedium,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  color: kWhiteColor)),
        ),
        Hero(
          tag: "variante-pop",
          child: RoundedButonIcon(
            text: "Agregar nueva variante",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PopVariante();
              }));
            },
            textcolor: kPrimaryColor1B3,
            color: kPrimaryLight8D9,
            iconcolor: kPrimaryColor1B3,
            icon: Icons.add_circle_rounded,
            tamano: .9,
            radius: 15,
            padding: 3,
          ),
        ),
        SizedBox(
          height: size.height * .02,
        ),
        MaterialContainerAdmin(
          titulo: "Diodo emisor de luz (LED)",
          url: "assets/images/let.png",
          cantidad: "7",
        ),
        SizedBox(
          height: size.height * .05,
        ),
      ],
    );
  }
}
