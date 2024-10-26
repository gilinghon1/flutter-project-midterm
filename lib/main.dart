import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'screens/cart_page.dart';

void main() {
  runApp(const ConverseApp());
}

class ConverseApp extends StatelessWidget {
  const ConverseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Converse',
      theme: myTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/cart': (context) => const CartPage(),
      },
    );
  }
}

var myTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: Colors.white,
        fontFamily: 'Integralcf',
        displayColor: Colors.white,
      ),
);
