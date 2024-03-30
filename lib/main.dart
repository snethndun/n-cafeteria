import 'package:flutter/material.dart';
import 'package:n_cafe/screens/cafe_page.dart';
import 'package:n_cafe/screens/cafe_sign_in.dart';

import 'package:n_cafe/screens/login_screen.dart';
import 'package:n_cafe/screens/product_Main_Screen.dart';
import 'package:n_cafe/screens/sign_up_page.dart';
import 'package:n_cafe/screens/verify_Email_Screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => SignUpScreen(),
      //   '/login': (context) => loginScreen(),
      //   '/verify': (context) => Verify_Email(),
      // },

      home: CafeSignIn(),

      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Image.asset('assets/images/Rectangle167.png'),
        ),
      ),
    );
  }
}
