import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:n_cafe/components/bottom_naviagation.dart';
import 'package:n_cafe/components/primary_text_component.dart';
import 'package:n_cafe/components/text_styles.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  late bool _passwordVisible;
  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFF4F5F9),
      bottomNavigationBar: CustomizedBottomNavigation(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "About Me",
          style: SecondaryTextBlackStyleHeadingLight(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/User.png'),
                    radius: 50.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "HMYT Bandara",
                    style:
                        SecondaryTextBlackStyleHeadingLight(fontSize: 15.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Personal Details",
              style: SecondaryTextBlackStyleHeadingLight(fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              enabled: false,
              decoration: PrimaryTextComponent(
                MyHintText: "Yasiru Theekshana",
                MyPrefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              enabled: false,
              decoration: PrimaryTextComponent(
                MyHintText: "24567",
                MyPrefixIcon: Icon(Icons.card_membership),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              enabled: false,
              decoration: PrimaryTextComponent(
                MyHintText: "323yasiru@students.nsbm.ac.lk",
                MyPrefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Change Password",
                  style: SecondaryTextBlackStyleHeadingLight(),
                ),
                Text(
                  "Edit",
                  style: SecondaryTextGrayStyle(
                      myFontWeight: FontWeight.w400, fontSize: 15.0),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              obscureText: !_passwordVisible,
              decoration: PrimaryTextComponent(
                MyHintText: "Password",
                MyPrefixIcon: Icon(Icons.lock_outline),
                MySuffixIcon: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        _passwordVisible = !_passwordVisible;
                      },
                    );
                  },
                  icon: Icon(_passwordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
