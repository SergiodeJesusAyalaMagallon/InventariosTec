// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButonIcon extends StatelessWidget {
  const RoundedButonIcon({
    Key? key,
    required this.text,
    required this.press,
    required this.textcolor,
    required this.color,
    required this.iconcolor,
    required this.icon,
    required this.tamano,
    required this.radius,
    this.fontWeight = kmedium,
    this.margintop = 0,
    this.padding = 0,
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final Color color, textcolor, iconcolor;
  final IconData icon;
  final double tamano;
  final FontWeight fontWeight;
  final double radius;
  final double margintop;
  final double padding;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: margintop),
      width: size.width * tamano,
      child: TextButton(
        onPressed: press,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8 + padding, horizontal: 10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconcolor,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  text,
                  style: TextStyle(
                      color: textcolor, fontSize: 16, fontWeight: fontWeight),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
