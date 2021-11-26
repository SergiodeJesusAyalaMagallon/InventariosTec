// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/editar_alta_material.dart';

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
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          SizedBox(
            height: size.height * .08,
          ),
          Row(
            children: [
              BotonReturn(),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: size.width * .58,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("Editar material",
                        style: TextStyle(
                            fontWeight: kmedium,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            color: kWhiteColor)),
                  ],
                ),
              ),
            ],
          ),
          EditarAltaMaterial(
            descripcion:
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea  amet.",
            nombre: "Placa Arduino",
          )
        ]),
      ),
    ]);
  }
}
