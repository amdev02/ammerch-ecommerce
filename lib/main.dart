import 'package:amerchendice/pages/client/client.dart';
import 'package:amerchendice/pages/detail_product.dart';
import 'package:amerchendice/pages/client/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MainPage(),
      routes: {
        '/detail-product': (context) => DetailProduct(),
      },
    );
  }
}
