import 'package:openmarket/pages/home_page/home_page.dart';
import 'package:openmarket/themes/app_theme.dart';
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
      title: 'OpenMarket - A Free tax online Shopping mall never seen before ',
      theme: appTheme(),
      home: HomePage(),
    );
  }
}
