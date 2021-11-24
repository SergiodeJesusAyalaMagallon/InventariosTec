// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class Card_information extends StatelessWidget {
  const Card_information({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: kPrimaryColor1B3,
        border: Border.all(
          color: kPrimaryColor1B3,
          width: 0,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Opacity(
                opacity: .05,
                child: SvgPicture.asset(
                  "assets/icons/Logo.svg",
                  width: size.width * .32,
                ),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          child: SvgPicture.asset(
                            "assets/icons/Logo.svg",
                            width: size.width * .09,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: size.width * .65,
                          child: Container(
                            padding: EdgeInsets.only(left: 20),
                            child: SvgPicture.asset(
                              "assets/icons/nombreTec.svg",
                              width: size.width,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .55,
                          child: Text("campus Jiquilpan",
                              style: TextStyle(
                                  fontWeight: kbold,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: kPrimaryLightD1D)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width * .9,
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("Rodrigo V***** M*****",
                        style: TextStyle(
                            fontWeight: kbold,
                            fontSize: 17,
                            fontFamily: 'Montserrat',
                            color: kWhiteColor)),
                  ),
                ),
                SizedBox(
                  width: size.width * .9,
                  child: Text("NC 19420859",
                      style: TextStyle(
                          fontWeight: kmedium,
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                          color: kWhiteColor.withOpacity(.8))),
                ),
                SizedBox(
                  width: size.width * .5,
                  child: Opacity(
                    opacity: .8,
                    child: Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Ingenieria en Sistemas Computacionales",
                          style: TextStyle(
                              fontWeight: kmedium,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              color: kWhiteColor.withOpacity(.8))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
