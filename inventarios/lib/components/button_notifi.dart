// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class ButtonNotifi extends StatelessWidget {
  const ButtonNotifi({
    Key? key,
    required this.onpress,
    required this.notificaciones,
  }) : super(key: key);

  final VoidCallback onpress;
  final int notificaciones;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: size.width * 0.87,
          height: 60,
          child: Stack(children: [
            Positioned(
              top: 10,
              child: SizedBox(
                width: size.width * .85,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: TextButton(
                    onPressed: onpress,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications_rounded,
                          color: kWhiteColor,
                          size: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Notificaciones",
                            style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 16,
                                fontWeight: kmedium),
                          ),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: kSecondaryBlack403,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFF913232), shape: BoxShape.circle),
                  child: Text(
                    notificaciones.toString(),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: kWhiteColor),
                  )),
            ),
          ]),
        )
      ],
    );
  }
}
