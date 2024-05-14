import 'package:flutter/material.dart';

class PGridlayout extends StatelessWidget {
  PGridlayout(
      {required this.itemcont,
      required this.itembuilder,
      this.mainaxisExtent = 290});

  final int itemcont;
  final Widget? Function(BuildContext, int) itembuilder;
  final double? mainaxisExtent;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          mainAxisExtent: mainaxisExtent),
      itemBuilder: itembuilder,
      itemCount: itemcont,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.all(10),
    );
  }
}
