// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class BotonSiguiente extends StatelessWidget {
  const BotonSiguiente({
    Key? key,
    required this.onpress,
  }) : super(key: key);
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width * .9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: TextButton(
            onPressed: onpress,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      "Siguiente paso",
                      style: TextStyle(
                          color: kPrimaryColor1B3,
                          fontSize: 16,
                          fontWeight: kmedium),
                    ),
                  ),
                  Icon(
                    Icons.double_arrow_rounded,
                    color: kPrimaryColor1B3,
                  ),
                ],
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryLight8D9,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            ),
          ),
        ),
      ),
    );
  }
}
