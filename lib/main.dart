import 'package:flutter/material.dart';
import 'package:grid_layout_project/imageWithDetails.dart';
import 'package:provider/provider.dart';
import 'homePage.dart';

void main() {
  runApp(
    MyApp(),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => const homePage(),
      },
      debugShowCheckedModeBanner: false,
      title: "Photo Gallery",
    );
  }
}
