import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:n_cafe/components/bottom_naviagation.dart';
import 'package:n_cafe/components/text_styles.dart';

class Favourite {
  String? imagePath;
  String? cafeLogoPath;
  String? cafeName;
  String? productName;
  String? itemPrice;

  Favourite(
      {this.imagePath,
      this.cafeLogoPath,
      this.cafeName,
      this.itemPrice,
      this.productName});
}

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  List<Favourite> myFavourite = [
    Favourite(
      imagePath: 'assets/images/Roles.png',
      cafeLogoPath: 'assets/images/socafe.png',
      cafeName: 'So Cafe',
      itemPrice: 'LKR 150',
      productName: 'Cool Wade',
    ),
    Favourite(
      imagePath: 'assets/images/Roles.png',
      cafeLogoPath: 'assets/images/socafe.png',
      cafeName: 'So Cafe',
      itemPrice: 'LKR 150',
      productName: 'Cool Wade',
    ),
    Favourite(
      imagePath: 'assets/images/Roles.png',
      cafeLogoPath: 'assets/images/socafe.png',
      cafeName: 'So Cafe',
      itemPrice: 'LKR 150',
      productName: 'Cool Wade',
    ),
    Favourite(
      imagePath: 'assets/images/Roles.png',
      cafeLogoPath: 'assets/images/socafe.png',
      cafeName: 'So Cafe',
      itemPrice: 'LKR 150',
      productName: 'Cool Wade',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.delete),
          )
        ],
        centerTitle: true,
        title: Text(
          "Favourites",
          style: SecondaryTextBlackStyleHeadingLight(),
        ),
      ),
      backgroundColor: Color(0xFFF4F5F9),
      bottomNavigationBar: CustomizedBottomNavigation(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...myFavourite.map(
                    (item) => FavouriteCard(
                      imagePath: item.imagePath,
                      cafeLogoPath: item.cafeLogoPath,
                      cafeName: item.cafeName,
                      itemPrice: item.itemPrice,
                      productName: item.productName,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              color: Colors.white, // Customize your color
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: SecondaryTextBlackStyleHeadingLight(fontSize: 20.0),
                  ),
                  Text(
                    "LKR 600",
                    style: SecondaryTextBlackStyleHeadingLight(fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavouriteCard extends StatelessWidget {
  String? imagePath;
  String? cafeLogoPath;
  String? cafeName;
  String? productName;
  String? itemPrice;

  FavouriteCard(
      {super.key,
      this.imagePath,
      this.cafeLogoPath,
      this.cafeName,
      this.productName,
      this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: true, onChanged: null),
        Expanded(
          child: Card(
            surfaceTintColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          imagePath ?? 'assets/images/Roles.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    cafeLogoPath ?? 'assets/images/socafe.png'),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                cafeName ?? "So Cafe",
                                style: SecondaryTextBlackStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            productName ?? "Cool Wade",
                            style:
                                SecondaryTextBlackStyleHeading(fontSize: 15.0),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            itemPrice ?? "LKR 150",
                            style:
                                SecondaryTextPriceStyleNormal(fontSize: 12.0),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              Container(
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "2",
                                style: SecondaryTextBlackStyle(),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
