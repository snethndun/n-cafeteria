import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:n_cafe/components/bottom_naviagation.dart';
import 'package:n_cafe/components/primary_max_button_style.dart';
import 'package:n_cafe/components/primary_text_component.dart';
import 'package:n_cafe/components/text_styles.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({super.key});

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: CustomizedBottomNavigation(),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/foodimage.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "LKR 150",
                          style: SecondaryTextPriceStyleNormal(
                              fontSize: 30.0, myFontWeight: FontWeight.w600),
                        ),
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage:
                              AssetImage('assets/images/socafe.png'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Rice and Curry",
                      style:
                          SecondaryTextBlackStyleHeadingLight(fontSize: 30.0),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          "4.5",
                          style: SecondaryTextBlackStyle(),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFEC106),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFEC106),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFEC106),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFEC106),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFEC106),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "90 reviews",
                          style: SecondaryTextGrayStyle(fontSize: 12.0),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Ihaw-sarap marinated chicken quarters. Expertly grilled the Mang Inasal way served with a cup of rice. \n *All rice meals come with a cup of rice, and anoption to have unlimited servings of rice for dine-in. \n *Available in Spicy variant.",
                      style: SecondaryTextBlackStyle(
                          myFontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: TextField(
                              decoration:
                                  PrimaryTextComponent(MyHintText: "Quentity"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 65.0,
                          width: 35.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 65.0,
                          width: 35.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Center(
                            child: Text(
                              "1",
                              style: SecondaryTextBlackStyle(fontSize: 20.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 65.0,
                          width: 35.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Center(
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Add to favorite",
                      ),
                      style: PrimaryMaxButtonStyle(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
