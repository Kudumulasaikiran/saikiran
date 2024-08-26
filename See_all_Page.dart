import 'package:flutter/material.dart';

class SeeAllPage extends StatefulWidget {
  const SeeAllPage({super.key});

  @override
  State<SeeAllPage> createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Special Offers',
          style: TextStyle(
              fontSize: 21.05,
              fontWeight: FontWeight.w600,
              color: Color(0xFF212121)),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 18),
              child: Container(
                height: 159.17,
                width: 333.22,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/food1.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFFBE9D),
                      Color(0xFF95EA9D),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '30%',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 52.74,
                            ),
                          ),
                          Text(
                            'Discount only\nVALID FOR TODAY!',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 15.82,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Transform.scale(
                          scale: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/food.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Container(
                height: 159.17,
                width: 333.22,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/food.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF005FAF)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '20%',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 52.74,
                            ),
                          ),
                          Text(
                            'Special Offer\nThis Weekend Only!',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 15.82,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Transform.scale(
                          scale: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/food1.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: 159.17,
                width: 333.22,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/food.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFFBE9D)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '15%',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 52.74,
                            ),
                          ),
                          Text(
                            'Limited Time Offer\nHurry Up!',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 15.82,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Transform.scale(
                          scale: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/food3.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                height: 159.17,
                width: 333.22,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/food.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF263238),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '25%',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 52.74,
                            ),
                          ),
                          Text(
                            'New Collection\nJust Arrived!',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 15.82,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 31),
                        child: Transform.scale(
                          scale: 1.0,
                          child: Image(
                            image: AssetImage('assets/images/food4.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Special Offers',
          style: TextStyle(
            fontSize: 21.05,
            fontWeight: FontWeight.w600,
            color: Color(0xFF212121),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        children: [
          SpecialOfferItem(
            discountPercentage: '30%',
            offerText: 'Discount only\nVALID FOR TODAY!',
            imagePath: 'lib/Image/Image.png',
            gradientColors: [Color(0xFFFFBE9D), Color(0xFF95EA9D)],
          ),
          // SizedBox(height: 10),
          SpecialOfferItem(
            discountPercentage: '20%',
            offerText: 'Special Offer\nThis Weekend Only!',
            imagePath: 'lib/Image/Image1.png',
            backgroundColor: Color(0xFF005FAF),
          ),
          //SizedBox(height: 10),
          SpecialOfferItem(
            discountPercentage: '15%',
            offerText: 'Limited Time Offer\nHurry Up!',
            imagePath: 'lib/Image/Image3.png',
            backgroundColor: Color(0xFFFFBE9D),
          ),
          //SizedBox(height: 10),
          SpecialOfferItem(
            discountPercentage: '25%',
            offerText: 'New Collection\nJust Arrived!',
            imagePath: 'lib/Image/Image4.png',
            backgroundColor: Color(0xFF263238),
          ),
        ],
      ),
    );
  }
}

class SpecialOfferItem extends StatelessWidget {
  final String discountPercentage;
  final String offerText;
  final String imagePath;
  final List<Color> gradientColors;
  final Color? backgroundColor;

  const SpecialOfferItem({
    required this.discountPercentage,
    required this.offerText,
    required this.imagePath,
    this.gradientColors = const [],
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159.17,
      width: 333.22,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/Image/Group.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
        gradient: gradientColors.isNotEmpty
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: gradientColors,
              )
            : null,
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 15),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  discountPercentage,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 52.74,
                  ),
                ),
                Text(
                  offerText,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 15.82,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Transform.scale(
                scale: 1.0,
                child: Image(
                  image: AssetImage(imagePath),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
