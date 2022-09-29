import 'package:flutter/material.dart';

class Responsive   {

  // This isMobile, isWeb helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 1080;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width > 1080 || MediaQuery.of(context).size.width > 1920;
}