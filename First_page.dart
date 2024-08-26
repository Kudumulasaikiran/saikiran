import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_app_new/List_screen/restaurant_page_view.dart';
import 'Custom_BottomNavigationBar.dart';
import 'Custom_textformfield.dart';
import 'Search_Page.dart';
import 'See_all_Page.dart';

final _formkey = GlobalKey<FormState>();

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPage = 0;
  List<List<Color>> _backgroundColors = [
    [Color(0xFFFFBE9D), Color(0xFF95EA9D)],
    [Color(0xFF005FAF)],
    [Color(0xFFFFBE9D)],
    [Color(0xFF263238)],
  ];
  List<List<String>> _texts = [
    ['30%', 'Discount only\nVALID FOR TODAY!'],
    ['20%', 'Special Offer\nThis Weekend Only!'],
    ['15%', 'Limited Time Offer\nHurry Up!'],
    ['25%', 'New Collection\nJust Arrived!'],
  ];
  List<List<String>> _imagePaths = [
    ['assets/images/food1.png'],
    ['assets/images/food.png'],
    ['assets/images/food3.png'],
    ['assets/images/food2.png'],
  ];
  late Timer _timer;

  List<String> AllFirstText = [
    'Awesome Fruit Restaurant',
    'Pizza Lover Company',
    'Chicken Fried Restaurant',
    'Awesome Fruit Restaurant',
    'Pizza Lover Company',
    'Chicken Fried Restaurant',
  ];
  List<String> AllSecondText = [
    '13th street,47 W 13th st,NY',
    '78th sreet,88 W 21th st,NY',
    '132th street,41 W 10th st,NY',
    '13th street,47 W 13th st,NY',
    '78th sreet,88 W 21th st,NY',
    '132th street,41 W 10th st,NY',
  ];
  List<String> AllThirdText = [
    '3 min,1.1 km',
    '4 min,1.5 km',
    '5 min,1.7 km',
    '3 min,1.1 km',
    '4 min,1.5 km',
    '5 min,1.7 km',
  ];
  List<String> AllImage = [
    'assets/images/food1.png',
    'assets/images/food3.png',
    'assets/images/food2.png',
    'assets/images/food1.png',
    'assets/images/food1.png',
    'assets/images/food1.png',
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), _updatePage);
  }

  void _updatePage(Timer timer) {
    setState(() {
      _currentPage = (_currentPage + 1) % _backgroundColors.length;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                height: 190,
                width: screenWidth,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/img.png'),
                    fit: BoxFit.cover,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.yellow, Colors.orange],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 15, right: 110),
                                  child: Text(
                                    'Delivery',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Bacangan, Sambit',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/content.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomSearchbar(
                        text: 'What would you like to eat?',
                        icondata: Icons.search,
                        iconcolor: Colors.black26,
                        iconsize: 30,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Special offers',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.58,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SeeAllPage()));
                            }
                          },
                          child: const Text(
                            'See All',
                            style:
                                TextStyle(color: Colors.orange, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 159.17,
                      width: 333.22,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/food.png'),
                          fit: BoxFit.cover,
                        ),
                        color: _backgroundColors[_currentPage][0],
                        borderRadius: BorderRadius.circular(10),
                        gradient: _currentPage == 0
                            ? LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: _backgroundColors[_currentPage],
                              )
                            : null,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _texts[_currentPage][0],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 52.74,
                                  ),
                                ),
                                Text(
                                  _texts[_currentPage][1],
                                  style: const TextStyle(
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
                                  image:
                                      AssetImage(_imagePaths[_currentPage][0]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 140.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          for (var i = 0; i < _imagePaths.length; i++)
                            buildIndicator(_currentPage == i)
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          'Choose Category',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 220,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildImageContainer(
                                  'assets/images/food1.png', 'Hambur'),
                              _buildImageContainer(
                                  'assets/images/food2.png', 'Tuna'),
                              _buildImageContainer(
                                  'assets/images/food3.png', 'Chicken'),
                              _buildImageContainer(
                                  'assets/images/food4.png', 'Spage'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildImageContainer(
                                    'assets/images/food1.png', 'Shirmp'),
                                _buildImageContainer(
                                    'assets/images/food2.png', 'Spaghe'),
                                _buildImageContainer(
                                    'assets/images/food3.png', 'lamb'),
                                _buildImageContainer(
                                    'assets/images/food.png', 'Cook'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Row(
                        children: [
                          Text(
                            'Restaurant Near You',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RestaurantPageView()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    height: 120,
                                    width: 340,
                                    color: Colors.white,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Container(
                                            height: 80,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.transparent,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      AllImage[index]),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 18),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                AllFirstText[index],
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0xFF2A3B56),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.location_on,
                                                      color: Color(0xFF8A94A3),
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      AllSecondText[index],
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xFF8A94A3),
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.access_time,
                                                      color: Color(0xFF8A94A3),
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      AllThirdText[index],
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xFF8A94A3),
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 20,
                                                    ),
                                                    Text('4.9',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF2A3B56),
                                                            fontSize: 12)),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 170),
                                                      child: Icon(
                                                        Icons.favorite_border,
                                                        size: 20,
                                                        color: Colors.grey,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }

  Widget _buildImageContainer(String imagePath, String text) {
    return Column(
      children: [
        Container(
          height: 74.09,
          width: 74.28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2A3B56)),
          ),
        ),
      ],
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
          height: isSelected ? 12 : 8,
          width: isSelected ? 12 : 8,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Color(0xFFF57D1F) : Color(0xFFFFAD6C))),
    );
  }
}
