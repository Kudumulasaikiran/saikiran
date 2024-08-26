import 'package:flutter/material.dart';

import 'BottomNavigationbar.dart';
import 'No_Result_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> AllFirstText = [
    'Pasta spaghetti with shrimps',
    'Baked chicken wings with sauce',
    'Chicken steak with salad',
    'Tom yum kung or river prawn',
    'Bakso Malang Ciamik',
    'Chicken Fried Restaurant',
  ];
  List<String> AllSecondText = [
    '₹250',
    '₹250',
    '₹250',
    '₹250',
    '₹250',
    '₹250',
  ];
  List<String> AllThirdText = [
    'by Dapur umami',
    'by Eco Kitchen',
    'by jogol Manis ',
    'by RM Citra Alam',
    'by Mbok Mangap',
    'by Mbok Mangap',
  ];
  List<String> AllImage = [
    'assets/images/food.png',
    'assets/images/food.png',
    'assets/images/food.png',
    'assets/images/food.png',
    'assets/images/food.png',
    'assets/images/food.png',
  ];
  List<EdgeInsets> PaddingValue = [
    EdgeInsets.only(left: 100),
    EdgeInsets.only(left: 110),
    EdgeInsets.only(left: 110),
    EdgeInsets.only(left: 100),
    EdgeInsets.only(left: 100),
    EdgeInsets.only(left: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        title: TextFormField(
          //controller: _textEditingController,
          decoration: const InputDecoration(
            hintText: 'What would you like to eat?',
            hintStyle: TextStyle(color: Color(0xFF7E8CA0), fontSize: 16),
            // prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NoResultPage()));
              },
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.orange),
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 10),
              child: Row(
                children: [
                  Text(
                    'Top Searches',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF191A26)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        height: 120,
                        width: 340,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                      image: AssetImage(AllImage[index]),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AllFirstText[index],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF191A26)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          AllSecondText[index],
                                          style: const TextStyle(
                                              color: Color(0xFF191A26),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          AllThirdText[index],
                                          style: TextStyle(
                                              color: Color(0xFF7E8CA0),
                                              fontSize: 12),
                                        ),
                                        Padding(
                                          padding: PaddingValue[index],
                                          child: const Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 18,
                                          ),
                                        ),
                                        const Text('4.9',
                                            style: TextStyle(
                                                color: Color(0xFF191A26),
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
