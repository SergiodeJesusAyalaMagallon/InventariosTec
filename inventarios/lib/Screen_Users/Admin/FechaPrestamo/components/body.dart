// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/Screen_Users/Admin/Scan/components/scan.dart';
import 'package:inventarios/Screen_Users/Admin/Scan/scan_screen.dart';
import 'package:inventarios/components/boton_return.dart';
import 'package:inventarios/components/boton_siguiente_paso.dart';
import 'package:inventarios/components/rounded_button.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

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
                    Text("Práctica 18. Módulo SIM900",
                        style: TextStyle(
                            fontWeight: kmedium,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            color: kWhiteColor)),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: size.width,
            margin: EdgeInsets.only(top: 40),
            child: Text("¿Cuándo se entrega?",
                style: TextStyle(
                    fontWeight: kbold,
                    fontSize: 26,
                    fontFamily: 'Roboto',
                    color: kWhiteColor)),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                RoundedButton(
                  text: "Hoy",
                  press: () {},
                  color: kSecondaryBlack4A4,
                  textcolor: kWhiteColor,
                  tamano: .25,
                  paddingV: 0,
                  paddingH: 0,
                  fontsize: 12,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: RoundedButton(
                    text: "Mañana",
                    press: () {},
                    color: kSecondaryBlack4A4,
                    textcolor: kWhiteColor,
                    tamano: .25,
                    paddingV: 0,
                    paddingH: 0,
                    fontsize: 12,
                  ),
                ),
                RoundedButton(
                  text: "1 semana",
                  press: () {},
                  color: kSecondaryBlack4A4,
                  textcolor: kWhiteColor,
                  tamano: .25,
                  paddingV: 0,
                  paddingH: 0,
                  fontsize: 12,
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * .04,
          ),
          Container(
            height: 460,
            decoration: BoxDecoration(
                color: kWhiteColor, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                      color: kPrimaryColor1B3,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("06",
                              style: TextStyle(
                                  fontWeight: kbold,
                                  fontSize: 38,
                                  fontFamily: 'Montserrat',
                                  color: kPrimaryLightD3D)),
                          Text("JUN",
                              style: TextStyle(
                                  fontWeight: kbold,
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  color: kWhiteColor)),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text("2021",
                            style: TextStyle(
                                fontWeight: kbold,
                                fontSize: 77,
                                fontFamily: 'Montserrat',
                                color: kPrimaryLight8D9)),
                      ),
                    ],
                  ),
                ),
                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  calendarBuilders: CalendarBuilders(
                    dowBuilder: (context, day) {
                      final text = DateFormat.E().format(day);

                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                            color: Color(0xFF3B3A3A),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            text,
                            style: TextStyle(color: kWhiteColor),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * .04,
          ),
          BotonSiguiente(
            onpress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyHome();
              }));
            },
          ),
          SizedBox(
            height: size.height * .04,
          ),
        ]),
      ),
    ]);
  }
}
