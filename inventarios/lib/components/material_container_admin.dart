// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MaterialContainerAdmin extends StatelessWidget {
  const MaterialContainerAdmin({
    Key? key,
    required this.url,
    required this.titulo,
    required this.cantidad,
  }) : super(key: key);

  final String titulo, url;
  final String cantidad;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: size.width * .85,
      decoration: BoxDecoration(
        color: kSecondaryBlack252,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 67,
            height: 67,
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: kSecondaryBlack4A4,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              url,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  width: size.width * .55,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    titulo,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: kSecondaryLightE0E,
                        fontSize: 16,
                        fontWeight: kbold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                Container(
                  width: size.width * .55,
                  margin: EdgeInsets.only(left: 10, top: 5, bottom: 15),
                  child: Text(
                    cantidad + " disponibles",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: kSecondaryLightE0E,
                        fontSize: 15,
                        fontWeight: kmedium,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                SizedBox(
                  width: size.width * .54,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 27,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Eliminar",
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 12,
                                  fontWeight: kmedium),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: kSecondaryBlack4A4,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 27,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Modificar",
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 12,
                                  fontWeight: kmedium),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: kSecondaryBlack4A4,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
