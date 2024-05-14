import 'package:flutter/material.dart';

class titleRow extends StatelessWidget {
  titleRow({required this.text, this.widget});
  final String text;
  Widget? widget;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        widget!
      ],
    );
  }
}
