// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventarios/components/lista_articulos.dart';

import '../constants.dart';

class PrestamosContainer extends StatelessWidget {
  const PrestamosContainer({
    Key? key,
    required this.dia,
    required this.mes,
    required this.ano,
    required this.tituloprestamo,
    required this.codigoprestamo,
    required this.retrasado,
    required this.estatus,
  }) : super(key: key);

  final String dia;
  final String mes;
  final String ano;
  final String tituloprestamo;
  final String codigoprestamo;
  final bool retrasado;
  final String estatus;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(bottom: 25),
        width: size.width * .85,
        decoration: BoxDecoration(
          color: kSecondaryBlack2E2,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    SizedBox(
                      width: size.width * .585,
                      child: Text(tituloprestamo,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: kbold,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              color: kWhiteColor)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      width: size.width * .585,
                      child: Text(codigoprestamo,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              color: kSecondaryColor807)),
                    ),
                    PilaMaterialDemo()
                  ],
                ),
              ),
              Container(
                width: size.width * .20,
                padding: EdgeInsets.only(top: 15, bottom: 35),
                decoration: BoxDecoration(
                  color: kSecondaryBlack333,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(dia,
                        style: TextStyle(
                            fontWeight: kbold,
                            fontSize: 29,
                            fontFamily: 'Montserrat',
                            color: kWhiteColor)),
                    Text(mes,
                        style: TextStyle(
                            fontWeight: kbold,
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            color: kWhiteColor.withOpacity(.55))),
                    Text(ano,
                        style: TextStyle(
                            fontWeight: kbold,
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            color: kWhiteColor.withOpacity(.30))),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                width: size.width * .45,
                height: 25,
                decoration: BoxDecoration(
                  color: retrasado == true
                      ? Color(0xFF913232)
                      : kSecondaryBlack4B4,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                ),
                child: Text(estatus,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        color: kWhiteColor)),
              ))
        ]));
  }
}
