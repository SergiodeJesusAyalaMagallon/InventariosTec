// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class Child extends StatelessWidget {
  const Child({
    Key? key,
    required this.user,
  }) : super(key: key);
  final String user;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .75,
      margin: EdgeInsets.only(left: 25, top: 15, bottom: 10),
      child: Row(
        children: [
          Text("Accediste como",
              style: TextStyle(
                  fontWeight: kmedium,
                  fontSize: 17,
                  color: kWhiteColor.withOpacity(.6))),
          Container(
            width: size.width * .41,
            margin: EdgeInsets.only(left: 5),
            child: Text(user,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: kmedium, fontSize: 17, color: kWhiteColor)),
          ),
        ],
      ),
    );
  }
}
