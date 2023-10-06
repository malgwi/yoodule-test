import 'package:flutter/material.dart';
import 'package:yoodule_test/screens/login_page.dart';
import 'package:yoodule_test/screens/map_page.dart';
import 'package:yoodule_test/screens/sign_up.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/SignUpPage': (context) => SignUpPage(),
        '/MapPage': (context) => MapPage(),
      },
    );
  }

}