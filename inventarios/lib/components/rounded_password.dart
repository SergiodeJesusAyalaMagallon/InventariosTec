// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/components/text_field_container.dart';
import 'package:inventarios/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      style: TextStyle(color: kWhiteColor, fontSize: 16),
      obscureText: true,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintStyle: TextStyle(
              color: Color.fromRGBO(255, 255, 255, .3),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: kmedium),
          hintText: "Escríbela aquí",
          suffixIcon: Icon(
            Icons.vpn_key_rounded,
            color: kWhiteColor,
          ),
          border: InputBorder.none),
    ));
  }
}
