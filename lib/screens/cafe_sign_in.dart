import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:n_cafe/components/primary_max_button_style.dart';
import 'package:n_cafe/components/text_styles.dart';
import 'package:n_cafe/components/primary_text_component.dart';

class CafeSignIn extends StatefulWidget {
  const CafeSignIn({super.key});

  @override
  State<CafeSignIn> createState() => _staffScreenState();
}

class _staffScreenState extends State<CafeSignIn> {
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Welcome",
          style: SecondaryTextWhiteStyle(fontSize: 20.0),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/staff_cover.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment(0, 1.2),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Welcome N-Cafe!",
                                    style: PrimaryHeadingTextStyle(),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Log in to your account",
                                    style: SecondaryTextGrayStyle(),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Container(
                                child: TextField(
                                  decoration: PrimaryTextComponent(
                                    MyHintText: "Cafe ID",
                                    MyPrefixIcon: Icon(Icons.person),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                child: TextField(
                                  obscureText: !_passwordVisible,
                                  decoration: PrimaryTextComponent(
                                    MyHintText: "Password",
                                    MyPrefixIcon: Icon(Icons.lock_outline),
                                    MySuffixIcon: IconButton(
                                      onPressed: () {
                                        setState(
                                          () {
                                            _passwordVisible =
                                                !_passwordVisible;
                                          },
                                        );
                                      },
                                      icon: Icon(_passwordVisible
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/verify');
                                },
                                child: Text("Login"),
                                style: PrimaryMaxButtonStyle(),
                              ),
                              SizedBox(height: 10.0),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
