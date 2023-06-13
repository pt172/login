import 'package:flutter/material.dart';
import 'package:login/login_page.dart';
import 'package:login/pageone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 19, 50, 116),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: 'loginpage',
        routes: {
          'loginpage': (context) => const LoginPage(),
          'pageone': (context) => const PageOne(),
        });
  }
}
