import 'package:flutter/material.dart';
import 'package:n_cafe/components/text_styles.dart';
import 'package:n_cafe/data/product.dart';
import 'package:n_cafe/components/bottom_naviagation.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<RecentSearchItem> recentSearches = [
    RecentSearchItem(dishName: 'Chicken Kottu'),
    RecentSearchItem(dishName: 'Chicken Fried Rice'),
  ];

  final List<String> cafeList = ["1", "2", "3", "4", "5", "6"];

  final List<Product> productList = Product.getProductList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      bottomNavigationBar: CustomizedBottomNavigation(),
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF4F5F9),
            hintText: 'Search here...',
            hintStyle: SecondaryTextGrayStyle(),
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none, // Removes default TextField underline
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ... (Search Bar code)

              SizedBox(height: 20),
              Text('Recent Searches', style: SecondaryTextBlackStyle()),
              SizedBox(height: 10),

              // Recent Searches List
              Column(
                children: recentSearches
                    .map((item) => RecentSearchItem(
                          dishName: item.dishName,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: 5.0,
              ),
              Center(
                child: Text(
                  "Clear Search History",
                  style: SecondaryTextGrayStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              GridView.count(
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
                              productList[index].getProductPrice().toString(),
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
                              style: SecondaryTextBlackStyle(fontSize: 12.0),
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
                                    borderRadius: BorderRadius.circular(6.0),
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
            ],
          ),
        ),
      ),
    );
  }
}

class RecentSearchItem extends StatelessWidget {
  final String dishName;

  const RecentSearchItem({required this.dishName});

  @override
  Widget build(BuildContext context) {
    return Container(
        // Add padding or margin as needed
        child: Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/RiceAndCurry.png'),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              dishName,
              style: SecondaryTextBlackStyle(),
            ),
          ],
        ),
      ),
    ));
  }
}
