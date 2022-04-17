import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/home/home-screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      EcommerceApp()
  );
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
    );
  }
}
