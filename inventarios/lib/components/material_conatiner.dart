// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:inventarios/components/dropdownbutton.dart';

import '../constants.dart';

class MaterialContainer extends StatelessWidget {
  const MaterialContainer({
    Key? key,
    required this.url,
    required this.titulo,
    this.child = const SizedBox(
      height: 10,
    ),
    this.editable = false,
    this.cantidad = "",
    this.recibido = false,
  }) : super(key: key);

  final String titulo, url;
  final Widget child;
  final bool editable;
  final String cantidad;
  final bool recibido;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      padding: EdgeInsets.all(10),
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
                child,
                SizedBox(
                  width: size.width * .54,
                  child: Row(
                    children: [
                      editable == true
                          ? Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              alignment: Alignment.center,
                              width: 63,
                              height: 27,
                              decoration: BoxDecoration(
                                color: kSecondaryBlack4A4,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "X" + cantidad,
                                style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: 16,
                                    fontWeight: kbold),
                              ))
                          : DropDownButton(),
                      SizedBox(
                        height: 27,
                        child: editable == true
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: TextButton(
                                  onPressed: () {},
                                  child: recibido == true
                                      ? Text(
                                          "Recibido",
                                          style: TextStyle(
                                              color: kWhiteColor,
                                              fontSize: 12,
                                              fontWeight: kmedium),
                                        )
                                      : Text(
                                          "No recibido",
                                          style: TextStyle(
                                              color: kWhiteColor,
                                              fontSize: 12,
                                              fontWeight: kmedium),
                                        ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: kSecondaryBlack4A4,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 35),
                                  ),
                                ),
                              )
                            : ClipRRect(
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 35),
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
