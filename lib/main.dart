import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:n_cafe/screens/about_me.dart';
import 'package:n_cafe/screens/added_review.dart';
import 'package:n_cafe/screens/cafe_page.dart';
import 'package:n_cafe/screens/cafe_sign_in.dart';
import 'package:n_cafe/screens/favourites_screen.dart';
import 'package:n_cafe/screens/food_details.dart';

import 'package:n_cafe/screens/login_screen.dart';
import 'package:n_cafe/screens/product_Main_Screen.dart';
import 'package:n_cafe/screens/search_screen.dart';
import 'package:n_cafe/screens/sign_up_page.dart';
import 'package:n_cafe/screens/verify_Email_Screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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

      home: FavouritesScreen(),

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
