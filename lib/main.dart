import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pricee/common/style/widget/Tappbar.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: myhomepage(),
    );
  }
}

class myhomepage extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    // TODO: implement build
     Brightness systemBrightness = MediaQuery.of(context).platformBrightness;

    return Scaffold(
  
      body: SingleChildScrollView(
        child: Column(
     children: [ 
Ttop_curve(
              systemBrightness: systemBrightness,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TAppbar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ayushi",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.merge(const TextStyle(color: Colors.white)),
                        ),
                        Text("address",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.merge(const TextStyle(color: Colors.white))),
                      ],
                    ),
                    actions: const [
                      Icon(
                        Iconsax.shopping_bag,
                        color: Colors.white,
                      )
                    ],
                    showbackground: false,
                  ),],
              )
      ),



       ]
     

    )
       )   );

  }


}