import 'package:plts/screens/home_screen.dart';
import 'package:plts/screens/result_screen.dart';

class RoutesApp {
  static var routes = {
    '/': (ctx) => const HomeScreen(),
    '/hasil': (ctx) => const ResultScreen(),
  };
}