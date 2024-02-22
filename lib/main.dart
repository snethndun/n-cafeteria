import 'package:flutter/material.dart';
import 'package:n_cafe/Login_Screen.dart';


void main() {
  runApp(const loginScreen(
     home: SafeArea(child: loginScreen()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          body: Center(child:Image.asset('assets/images/Rectangle167.png')),




        )
    );


  }
}
