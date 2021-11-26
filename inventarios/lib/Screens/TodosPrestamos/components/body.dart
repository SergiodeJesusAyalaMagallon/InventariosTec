// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/prestamos_container.dart';
import 'package:inventarios/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              children: [
                BotonReturn(),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text("Prestamos",
                      style: TextStyle(
                          fontWeight: kmedium,
                          fontSize: 40,
                          fontFamily: 'Roboto',
                          color: kWhiteColor)),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            PrestamosContainer(
              onpress: () {},
              tituloprestamo: 'Prestamos de redes',
              codigoprestamo: 'ITJ-RD210829',
              dia: '09',
              mes: 'NOV',
              ano: '2021',
              estatus: 'Entrega retrasada',
              retrasado: true,
            ),
            PrestamosContainer(
              onpress: () {},
              tituloprestamo: 'Material para practica de laboratorio',
              codigoprestamo: 'ITJ-EL210852',
              dia: '25',
              mes: 'NOV',
              ano: '2021',
              estatus: '¡Se entrega mañana!',
              retrasado: false,
            ),
            PrestamosContainer(
              onpress: () {},
              tituloprestamo: 'Teclado y mouse',
              codigoprestamo: 'ITJ-WB210852',
              dia: '11',
              mes: 'NOV',
              ano: '2021',
              estatus: 'Entregado el jueves',
              retrasado: false,
            ),
            PrestamosContainer(
              onpress: () {},
              tituloprestamo: 'Prestamos de redes',
              codigoprestamo: 'ITJ-RD210829',
              dia: '09',
              mes: 'NOV',
              ano: '2021',
              estatus: 'Entrega retrasada',
              retrasado: true,
            ),
            PrestamosContainer(
              onpress: () {},
              tituloprestamo: 'Material para practica de laboratorio',
              codigoprestamo: 'ITJ-EL210852',
              dia: '25',
              mes: 'NOV',
              ano: '2021',
              estatus: '¡Se entrega mañana!',
              retrasado: false,
            ),
            PrestamosContainer(
              onpress: () {},
              tituloprestamo: 'Teclado y mouse',
              codigoprestamo: 'ITJ-WB210852',
              dia: '11',
              mes: 'NOV',
              ano: '2021',
              estatus: 'Entregado el jueves',
              retrasado: false,
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
          ],
        ),
      ),
    ]);
  }
}
