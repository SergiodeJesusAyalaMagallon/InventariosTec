// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({
    Key? key,
    required this.tituloNotifi,
    required this.description,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final String tituloNotifi;
  final String description;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * .9,
        margin: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
          color: kSecondaryBlack2E2,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * .15,
              padding: EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
              ),
              child: Icon(
                icon,
                color: kWhiteColor,
                size: 30,
              ),
            ),
            Container(
              width: size.width * .63,
              margin: EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  SizedBox(
                    width: size.width * .55,
                    child: Text(tituloNotifi,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: kbold,
                            fontSize: 19,
                            color: kWhiteColor)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 5),
                    child: Text(description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style:
                            TextStyle(fontSize: 16, color: kSecondaryLightBCB)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: kSecondaryLightB4B,
              ),
            ),
          ],
        ));
  }
}
