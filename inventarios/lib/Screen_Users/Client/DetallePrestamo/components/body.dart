// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventarios/components/detalleprestamo_contenido.dart';

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
        child: Column(
          children: [
            DetallePrestamo1(),
            Container(
              width: size.width * .85,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: kPrimaryColor1B3,
                border: Border.all(
                  color: kPrimaryColor1B3,
                  width: 0,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(children: [
                Positioned(
                    top: 0,
                    left: 0,
                    child: Opacity(
                      opacity: .05,
                      child: SvgPicture.asset(
                        "assets/icons/Logo.svg",
                        width: size.width * .26,
                      ),
                    )),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15, top: 10),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  width: size.width * .55,
                                  child: Text("Lizbeth Rivera Ortiz",
                                      style: TextStyle(
                                          fontWeight: kbold,
                                          fontSize: 17,
                                          fontFamily: 'Montserrat',
                                          color: kWhiteColor)),
                                ),
                                SizedBox(
                                  width: size.width * .55,
                                  child: Text("NC 19420859",
                                      style: TextStyle(
                                          fontWeight: kbold,
                                          fontSize: 17,
                                          fontFamily: 'Montserrat',
                                          color: kWhiteColor.withOpacity(.8))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * .7,
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text("Ingenieria en sistemas computacionales",
                              style: TextStyle(
                                  fontWeight: kbold,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  color: kWhiteColor)),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      SizedBox(
                        width: size.width * .9,
                        child: Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text("Semestre 5",
                              style: TextStyle(
                                  fontWeight: kbold,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  color: kWhiteColor.withOpacity(.8))),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            DetallePrestamo2()
          ],
        ),
      ),
    ]);
  }
}
