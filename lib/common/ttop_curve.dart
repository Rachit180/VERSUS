import 'package:flutter/material.dart';
import 'package:pricee/common/custome_clippers.dart';


class Ttop_curve extends StatelessWidget {
  const Ttop_curve(
      {super.key, required this.systemBrightness, required this.child});

  final Brightness systemBrightness;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: customcPath(),
      child: Container(
        //height: 300,
        color: Colors.green,
        child: Stack(
          children: [
            //page

            child,
          ],
        ),
      ),
    );
  }
}
