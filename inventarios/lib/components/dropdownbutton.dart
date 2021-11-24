// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/constants.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButton();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DropDownButton extends State<DropDownButton> {
  String dropdownValue = '1';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      width: 63,
      height: 27,
      decoration: BoxDecoration(
        color: kSecondaryBlack4A4,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        iconSize: 30,
        dropdownColor: kSecondaryBlack4A4,
        alignment: Alignment.center,
        iconEnabledColor: kWhiteColor,
        underline: Container(
          height: 2,
          color: kSecondaryBlack4A4,
        ),
        style: const TextStyle(
            color: kWhiteColor, fontSize: 16, fontWeight: kbold),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['1', '2', '3', '4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
