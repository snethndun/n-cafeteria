import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:n_cafe/components/primary_max_button_style.dart';
import 'package:n_cafe/components/text_styles.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

import 'package:n_cafe/data/product.dart';

class ProductMainScreen extends StatefulWidget {
  const ProductMainScreen({super.key});

  @override
  State<ProductMainScreen> createState() => _ProductMainScreenState();
}

class _ProductMainScreenState extends State<ProductMainScreen> {
  late PageController _controller;
  final List<String> imgList = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    // add more image paths if needed
  ];

  final List<String> cafeList = ["1", "2", "3", "4", "5", "6"];

  final List<Product> productList = Product.getProductList();

  @override
  void initState() {
    // TODO: implement initState
    _controller = PageController(initialPage: 0);
    super.initState();
  }

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
        flexibleSpace: Container(
          height: 20.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
        ],
        title: const TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF4F5F9),
            focusColor: Color(0xFFF4F5F9),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            hintText: 'What are you carving ?',
            hintStyle: TextStyle(
              color: Color(0xFF868889),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xFF868889),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpandablePageView.builder(
                controller: _controller,
                itemCount: imgList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    imgList[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Cafes",
                style: SecondaryTextBlackStyleHeading(),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  itemCount: cafeList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.grey,
                        child: Text(cafeList[index]),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10.0,
              ),

              // here goes the product list
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
