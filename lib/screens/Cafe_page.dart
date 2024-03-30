import 'package:flutter/material.dart';
import 'package:n_cafe/components/text_styles.dart';
import 'package:n_cafe/data/product.dart';

class CafeScreen extends StatefulWidget {
  const CafeScreen({super.key});

  @override
  State<CafeScreen> createState() => _CafeScreenState();
}

class _CafeScreenState extends State<CafeScreen> {
  late PageController _controller;

  final List<Product> productList = Product.getProductList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // backgroundColor: Color(),
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(
          "So Cafe",
          style: SecondaryTextBlackStyleHeading(),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        // profile icon code

                        buildUserAvatar(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVv2FZ0oaDhgrfVfYVOoqj5coJvA0V7g_W1T3p9HreLA&s',
                            true),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          "So Cafe",
                          style: SecondaryTextBlackStyleHeadingLight(),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Available Now",
                style: SecondaryTextBlackStyleHeadingLight(),
              ),
              SizedBox(
                height: 10.0,
              ),
              Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // crossAxisCount is the number of columns
                    crossAxisCount: 2,
                    // This creates two columns with two items in each column
                    children: List.generate(
                      productList.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                // start of the static code
                                Image(
                                  image: productList[index].getImage(),
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  productList[index]
                                      .getProductPrice()
                                      .toString(),
                                  style: SecondaryTextPriceStyle(),
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  productList[index].getProductName(),
                                  style: SecondaryTextBlackStyle(),
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  productList[index].getCafeName(),
                                  style:
                                      SecondaryTextBlackStyle(fontSize: 12.0),
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Add to favourite",
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                    ),
                                    minimumSize: MaterialStateProperty.all(
                                      Size(100.0, 26.0),
                                    ),
                                    textStyle: MaterialStateProperty.all(
                                      TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF3AB54B),
                                    ),
                                    foregroundColor: MaterialStateProperty.all(
                                      Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                                // end of the static code
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildUserAvatar(String imageUrl, bool isOnline) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 25,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: isOnline ? 15 : 0,
            height: isOnline ? 15 : 0,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
