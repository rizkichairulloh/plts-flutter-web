import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plts/utilities/http_overrides.dart';
import 'package:plts/utilities/routes.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PLTS',
      theme: ThemeData(
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        fontFamily: 'WorkSans',
      ),
      initialRoute: '/',
      routes: RoutesApp.routes,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
    );
  }
}