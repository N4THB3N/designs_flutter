import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [Color(0xff2E305F), Color(0xff202333)]));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple Gradient
        Container(
          decoration: boxDecoration,
        ),

        // Pink box
        Positioned(top: -100, left: -30, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.pink,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ])),
      ),
    );
  }
}