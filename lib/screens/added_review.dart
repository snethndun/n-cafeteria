import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:n_cafe/components/bottom_naviagation.dart';
import 'package:n_cafe/components/primary_max_button_style.dart';
import 'package:n_cafe/components/text_styles.dart';
import 'package:n_cafe/components/primary_text_component.dart';

class AddedReview extends StatefulWidget {
  @override
  _AddedReviewState createState() => _AddedReviewState();
}

class _AddedReviewState extends State<AddedReview> {
  double _rating = 0;

  void _setRating(double rating) => setState(() => _rating = rating);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: CustomizedBottomNavigation(),
        backgroundColor: Color(0xFFF4F5F9),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Reviews',
            style: SecondaryTextBlackStyleHeadingLight(),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.add_circle_outline),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WriteReviewScreen()),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            ReviewCard(
              name: 'Yasiru Theekshana',
              timeAgo: '15 minutes ago',
              rating: 4.5,
              comment:
                  'A small local restaurant with great service, food, and overall experience!',
            ),
            ReviewCard(
              name: 'Sachin Fernando',
              timeAgo: '15 minutes ago',
              rating: 4.5,
              comment:
                  'This spot gives extraordinary service and yummy meals. One of my favourite restaurants around town.',
            ),
            ReviewCard(
              name: 'Geevinda Kodithuwakku',
              timeAgo: '15 minutes ago',
              rating: 4.5,
              comment:
                  'This cozy restaurant has left the best impressiorist. Hospitable hosts, delicious dishes. I recommend to everyone!',
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String timeAgo;
  final double rating;
  final String comment;

  const ReviewCard({
    Key? key,
    required this.name,
    required this.timeAgo,
    required this.rating,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
      child: Card(
        surfaceTintColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/User.png'),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: SecondaryTextBlackStyleHeading(fontSize: 15.0),
                      ),
                      Text(
                        timeAgo,
                        style: SecondaryTextGrayStyle(
                            fontSize: 12.0, fontHeight: 0.5),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text(
                    "4.5",
                    style: SecondaryTextBlackStyle(),
                  ),
                  SizedBox(
                    width: 0.5,
                  ),
                  for (int i = 0; i < rating.toInt(); i++)
                    Icon(Icons.star, color: Colors.amber),
                  for (int i = 0; i < 5 - rating.toInt(); i++)
                    Icon(Icons.star_outline, color: Colors.amber),
                ],
              ),
              SizedBox(
                height: 0.5,
              ),
              Text(
                comment,
                style: SecondaryTextGrayStyle(
                    fontSize: 12.0, myFontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WriteReviewScreen extends StatefulWidget {
  @override
  _WriteReviewScreenState createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  double _rating = 0;
  String _comment = '';

  void _setRating(double rating) => setState(() => _rating = rating);
  void _setComment(String comment) => setState(() => _comment = comment);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomizedBottomNavigation(),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF4F5F9),
      appBar: AppBar(
        title: Text(
          'Write Review',
          style: SecondaryTextBlackStyleHeadingLight(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Text(
              "What do you think ?",
              style: SecondaryTextBlackStyleHeading(),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Please give your rating by clicking on \n the stars below.",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++)
                  IconButton(
                    icon: Icon(
                      Icons.star,
                      color: _rating >= i + 1 ? Colors.amber : Colors.grey,
                    ),
                    onPressed: () => _setRating(i + 1),
                  ),
              ],
            ),
            Expanded(
              child: SizedBox(
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                  expands: true,
                  maxLines: null,
                  minLines: null,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hintText: "Tell us about the food you experienced!",
                    hintStyle: TextBoxHintTextGrayStyle(
                        fontSize: 12.0, myFontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  // any number you need (It works as the rows for the textarea)
                  keyboardType: TextInputType.multiline,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Submit"),
              style: PrimaryMaxButtonStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
