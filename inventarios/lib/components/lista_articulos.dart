// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:inventarios/constants.dart';

class PilaMaterialDemo extends StatefulWidget {
  const PilaMaterialDemo({Key? key}) : super(key: key);

  @override
  _PilaMaterialDemoState createState() => _PilaMaterialDemoState();
}

class _PilaMaterialDemoState extends State<PilaMaterialDemo> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 200),
        child: PilaMaterial(materiales: [
          Material("assets/images/arduinomega.png"),
          Material("assets/images/arduinomega.png"),
          Material("assets/images/arduinomega.png"),
          Material("assets/images/arduinomega.png")
        ]));
  }
}

class PilaMaterial extends StatefulWidget {
  final List<Material> materiales;
  const PilaMaterial({
    Key? key,
    required this.materiales,
  }) : super(key: key);

  @override
  State<PilaMaterial> createState() => _PilaMaterialState();
}

class _PilaMaterialState extends State<PilaMaterial> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          for (var i = 0; i < 3; i += 1)
            Positioned(
                top: 0,
                left: i * (1.0 - .1) * 60,
                child: MaterialCircle(material: widget.materiales.first))
        ],
      ),
    );
  }
}

class MaterialCircle extends StatefulWidget {
  final Material material;
  const MaterialCircle({
    Key? key,
    required this.material,
  }) : super(key: key);

  @override
  _MaterialCircleState createState() => _MaterialCircleState();
}

class _MaterialCircleState extends State<MaterialCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: kSecondaryColor807, shape: BoxShape.circle),
      child: Image.asset(
        widget.material.ruta,
        scale: 2,
      ),
    );
  }
}

class Material {
  final String ruta;

  Material(this.ruta);
}
