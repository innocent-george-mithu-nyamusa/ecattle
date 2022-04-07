import 'package:ecattle/constants/ColorScheme.dart';
import 'package:ecattle/generator/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, backgroundColor: mainBackgroundColor),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generatorRoute,
    );
  }
}
