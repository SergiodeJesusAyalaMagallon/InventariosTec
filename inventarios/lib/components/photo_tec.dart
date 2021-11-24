// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PhotoTec extends StatelessWidget {
  final Widget child;
  const PhotoTec({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Image.asset("assets/images/EdificioSyC.png"),
            width: size.width,
            height: size.height * 0.32,
            top: 0,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(32, 33, 37, 0.05),
                  Color(0XFF202125)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            ),
            width: size.width,
            height: size.height * 0.2001,
            top: size.height * .12,
          ),
          child,
        ],
      ),
    );
  }
}
