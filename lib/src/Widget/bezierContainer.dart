import 'dart:math';

import 'package:flutter/material.dart';

import 'customClipper.dart';

class BezierContainer extends StatelessWidget {
  const BezierContainer({Key key, this.tutor=false}) : super(key: key);
  final bool tutor;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.rotate(
        angle: -pi / 7.1, 
        child: ClipPath(
        clipper: ClipPainter(),
        child: Container(
          height: MediaQuery.of(context).size.height *.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                // end: Alignment.bottomRight,
                colors: (!tutor)?([
                  Color(0xff3a7bd5),
                  Color(0xff00d2ff)
                ]):([
                  Color(0xfffbb448),
                  Color(0xffe46b10)
                  ]),
              )
            ),
        ),
      ),
      )
    );
  }
}