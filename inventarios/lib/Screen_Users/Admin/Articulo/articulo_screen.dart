// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:inventarios/Screen_Users/Admin/Articulo/components/body.dart';

class ArticuloScreen extends StatelessWidget {
  final bool client;
  const ArticuloScreen({
    Key? key,
    required this.client,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        client: client,
      ),
    );
  }
}
