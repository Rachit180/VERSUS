import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class productCardVertical extends StatelessWidget {
  productCardVertical({
    required this.count,
   this.text
  });
  final int count;
  String? text;
  @override
  Widget build(BuildContext context) {
    Brightness systembrightness = MediaQuery.of(context).platformBrightness;
    // TODO: implement build
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 150,
        //height: 265,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 203, 201, 201),
                  spreadRadius: 0.5,
                  blurRadius: 4)
            ],
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: [
            Stack(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    height: 100,
                    child: Image(
                        image: AssetImage("assets/images/Product$count.png")),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 5,
                child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.yellow.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                  child: Center(child: Text('25%')),
                ),
              ),
              Positioned(
                  top: 10,
                  right: 5,
                  child: Icon(
                    Iconsax.heart5,
                    color: Colors.red,
                  ))
            ]),
            //details
            Text(
            text!,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.clip,
            ),
            Row(
              children: [
                Text(
                  "Nike",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Iconsax.tick_circle5,
                  size: 10,
                  color: Colors.green,
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$40",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
