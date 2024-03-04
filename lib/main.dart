import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:n_cafe/Login_Screen.dart';
=======
import 'package:n_cafe/screens/Login_screen.dart';
import 'package:n_cafe/screens/Sign_up_page.dart';
import 'package:n_cafe/screens/Verify_Email_Screen.dart';
>>>>>>> Stashed changes

void main() {
  runApp(
    MaterialApp(
<<<<<<< Updated upstream
      theme: ThemeData(useMaterial3: true),
      home: loginScreen(),
=======
      debugShowMaterialGrid: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => SignUpScreen(),
      //   '/login': (context) => loginScreen()
      // },
      home: Verify_Email(),
      theme: ThemeData(
        useMaterial3: true,
      ),
>>>>>>> Stashed changes
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
