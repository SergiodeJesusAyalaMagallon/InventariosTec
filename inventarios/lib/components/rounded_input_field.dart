// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/components/text_field_container.dart';

import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hinText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hinText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        style: TextStyle(color: kWhiteColor, fontSize: 16),
        onChanged: onChanged,
        decoration: InputDecoration(
            hintStyle: TextStyle(
              color: kWhiteColor.withOpacity(.3),
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
            hintText: hinText,
            suffixIcon: Icon(
              icon,
              color: kWhiteColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
