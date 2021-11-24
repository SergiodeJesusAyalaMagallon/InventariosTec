// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class Cuenta extends StatelessWidget {
  const Cuenta({
    Key? key,
    required this.icon,
    required this.titulo,
    required this.fecha,
    required this.botontit,
    required this.margin,
    this.child = const SizedBox(
      height: 15,
    ),
  }) : super(key: key);

  final String icon;
  final String titulo;
  final String fecha;
  final String botontit;
  final Widget child;
  final double margin;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: size.width * .85,
      padding: EdgeInsets.only(bottom: 15, top: 18),
      decoration: BoxDecoration(
        color: kSecondaryBlack2E2,
        border: Border.all(
          color: kSecondaryBlack2E2,
          width: 0,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: size.width * .82,
            decoration: BoxDecoration(
              color: kSecondaryBlack585.withOpacity(.5),
              border: Border.all(
                color: kSecondaryBlack585.withOpacity(.5),
                width: 0,
              ),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(22),
                  topRight: Radius.circular(22)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 58,
                      height: 43,
                      decoration: BoxDecoration(
                        color: kPrimaryColor1B3,
                        border: Border.all(
                          color: kPrimaryColor1B3,
                          width: 8,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(22),
                            topRight: Radius.circular(22)),
                      ),
                      child: Container(
                          margin: EdgeInsets.only(left: 13),
                          child: SvgPicture.asset(
                            icon,
                            width: 12.5,
                            height: 24,
                          )),
                    ),
                    Container(
                      width: size.width * .4,
                      margin: EdgeInsets.only(left: 10),
                      child: Text(titulo,
                          style: TextStyle(
                              fontWeight: kmedium,
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              color: kWhiteColor)),
                    ),
                    Text(fecha,
                        style: TextStyle(
                            fontWeight: kmedium,
                            fontSize: 15,
                            color: kWhiteColor.withOpacity(.5))),
                  ],
                ),
              ],
            ),
          ),
          child,
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  botontit,
                  style: TextStyle(
                      color: kWhiteColor, fontSize: 15, fontWeight: kmedium),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: kSecondaryBlack505,
                  padding: EdgeInsets.symmetric(horizontal: margin),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
