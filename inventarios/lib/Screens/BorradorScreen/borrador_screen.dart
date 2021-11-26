// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:inventarios/Screens/BorradorScreen/components/body.dart';

class BorradorScreen extends StatelessWidget {
  final bool adm;
  const BorradorScreen({
    Key? key,
    required this.adm,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        admin: adm,
      ),
    );
  }
}
