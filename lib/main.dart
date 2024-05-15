import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pricee/common/PGridlayout.dart';
import 'package:pricee/common/Title%20_row.dart';
import 'package:pricee/common/feature_card.dart';

import 'package:pricee/common/style/widget/Tappbar.dart';
import 'package:pricee/common/style/widget/navigation/main%20screen().dart';
import 'package:pricee/common/style/widget/search_fied.dart';
import 'package:pricee/common/style/widget/verticalProductcard.dart';
import 'package:pricee/common/ttop_curve.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}

class myhomepage extends StatelessWidget {
  List<String> productName = ["Ice-cream", "Chocolate", "Pepsi"];
  List<String> offer = [
    "100% off on first order",
    "Claim Gift card",
    "Free delivery",
    "Exclusive offers"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Brightness systemBrightness = MediaQuery.of(context).platformBrightness;

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Ttop_curve(
          systemBrightness: systemBrightness,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TAppbar(
              backgroundcolor: Color(0xffb043434),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Ayush",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
              actions: const [
                Column(
                  children: [
                    Text(
                      "Your Location",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
              showbackground: false,
            ),

//search button

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    width: 300,
                    child: Searchfield(
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        text: 'Search for products'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 17,
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 20,
                  ),
                )
              ],
            ),
          ])),
      //you might know
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "you might know ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "view all",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      // productCardVertical()

      Container(
        height: 240,
        //color: Colors.amber,
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: productCardVertical(
                count: index,
                text: productName[index],
              ),
            );
          },
        ),
      ),
      SizedBox(
        height: 30,
      ),
//--------------------------feature store----------------------------------
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Featurs store",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "view all",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
//----------------------------- feature card--------------------------------

      //featureCard(),
      PGridlayout(
        itemcont: 4,
        itembuilder: (_, index) => featureCard(
          count: index,
          offer: offer[index],
        ),
        mainaxisExtent: 100,
      )
    ])));
  }
}
