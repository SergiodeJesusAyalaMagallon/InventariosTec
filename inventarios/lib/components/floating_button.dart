// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, unused_field, prefer_final_fields, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:inventarios/components/rounded_button_icon.dart';

import '../constants.dart';

class FloatButton extends StatefulWidget {
  FloatButton({Key? key}) : super(key: key);

  @override
  _FloatButtonState createState() => _FloatButtonState();
}

class _FloatButtonState extends State<FloatButton>
    with SingleTickerProviderStateMixin {
  bool isOpened = true;
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 500))
        ..addListener(() {
          setState(() {});
        });
  late final Animation<Color> _buttonColor =
      Tween<Color>(begin: Colors.blue, end: Colors.red).animate(CurvedAnimation(
          parent: _animationController,
          curve: Interval(0.00, 1.00, curve: Curves.linear)));
  late final Animation<double> _animationIcon =
      Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  late final Animation<double> _translateButton =
      Tween<double>(begin: _fabHeight, end: -12.0).animate(CurvedAnimation(
          parent: _animationController,
          curve: Interval(0.0, 0.75, curve: _curve)));
  Curve _curve = Curves.easeOut;
  double _fabHeight = 65.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget buttonCrear() {
    return Container(
      child: RoundedButonIcon(
        text: "Escanear código",
        press: () {},
        textcolor: kPrimaryColor1B3,
        color: kPrimaryLight8D9,
        iconcolor: kPrimaryColor1B3,
        icon: Icons.qr_code_sharp,
        tamano: .5,
        radius: 15,
        padding: 5,
      ),
    );
  }

  Widget buttonEscan() {
    return Container(
      child: RoundedButonIcon(
        text: "Crear préstamo",
        press: () {},
        textcolor: kPrimaryColor1B3,
        color: kPrimaryLight8D9,
        iconcolor: kPrimaryColor1B3,
        icon: Icons.add_circle_rounded,
        tamano: .5,
        radius: 15,
        padding: 5,
      ),
    );
  }

  Widget buttonClose() {
    return Container(
      child: RoundedButonIcon(
        text: "Nuevo préstamo",
        press: animate,
        textcolor: kPrimaryColor1B3,
        color: kPrimaryLight8D9,
        iconcolor: kPrimaryColor1B3,
        icon: Icons.add_circle_rounded,
        tamano: .5,
        radius: 15,
        padding: 5,
      ),
    );
  }

  void animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Transform(
          transform:
              Matrix4.translationValues(0.0, _translateButton.value * 2, 0.0),
          child: buttonCrear(),
        ),
        Transform(
          transform:
              Matrix4.translationValues(0.0, _translateButton.value * 2, 0.0),
          child: buttonEscan(),
        ),
        buttonClose()
      ],
    );
  }
}
