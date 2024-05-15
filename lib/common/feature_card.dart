import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class featureCard extends StatelessWidget {
  featureCard({required this.count,this.offer});
  final int count;
  String? offer;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 203, 201, 201),
                spreadRadius: 0.5,
                blurRadius: 4)
          ],
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.white),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Text(
                    offer!,
              ),
              height: 40,
              width: 40,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            child: Image(image: AssetImage("assets/images/brand$count.png")),
          )
        ],
      ),
    );
  }
}
