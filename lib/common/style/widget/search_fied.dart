import 'package:flutter/material.dart';

class Searchfield extends StatelessWidget {
  Searchfield({super.key, required this.icon, required this.text});
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    Brightness systemBrightness = MediaQuery.of(context).platformBrightness;

    // TODO: implement build
    return Container(
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40))),
    );
  }
}
