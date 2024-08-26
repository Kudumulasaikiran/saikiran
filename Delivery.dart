import 'package:flutter/material.dart';
import 'package:food_app_new/cart_page_2.dart';
import 'package:food_app_new/welcome_splash_2.dart';
import 'package:food_app_new/widgets/elevated_button_widget.dart';

import 'First_page.dart';
import 'New_Cart/Cart_page.dart';
import 'personal_details_view.dart';
import 'Textformfield.dart';
import 'Textstyle.dart';

class delloc extends StatefulWidget {
  delloc({super.key});

  @override
  State<delloc> createState() => _dellocState();
}

class _dellocState extends State<delloc> {
  get isSelected => null;
  int selectedIndex = -1; // Initially no option is selected
  bool isButtonPressed = false; // Track if the button is pressed

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Select Your Location",
                  style: style4,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "On Map",
                style: style5,
              )
            ],
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/imagemap.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomTextField(hintText: "Search location"),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 5.0),
                            child: Text(
                              "Correctly place the pin on the map",
                              style: style10,
                            ),
                          ),
                          width: 250,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.0),
                          child: Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                            size: 60,
                          ),
                        ),
                        Icon(
                          Icons.location_on,
                          size: 50,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          height: 180,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isButtonPressed = !isButtonPressed;
                            });
                          },
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.my_location,
                                    color: Colors.orange,
                                    size: 25,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Locate Me",
                                      style: style11,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                              color: isButtonPressed
                                  ? Colors.orange
                                  : Colors.black,
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 200,
                padding: EdgeInsets.all(18.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.my_location,
                              color: Colors.orange, size: 15),
                          Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Text(
                              "Marie Oulgaret",
                              style: style8,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Manavely Revenue Village,Puducherry,India",
                          style: style9,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "(Marie Oulgaret)",
                          style: style9,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: ElevatedButtonWidget(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 2100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.my_location,
                                              color: Colors.orange, size: 15),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 12.0),
                                            child: Text(
                                              "Marie Oulgaret",
                                              style: style8,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Manavely Revenue Village,Puducherry,India",
                                        style: style9,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "(Marie Oulgaret)",
                                        style: style9,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: 380,
                                        height: 38,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          border: Border.all(
                                              color: Colors.grey, width: 0.2),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  'HOUSE / FLAT / BLOCK NO.',
                                              hintStyle: style12,
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 12.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width: 380,
                                        height: 38,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          border: Border.all(
                                              color: Colors.grey, width: 0.2),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  'APARTMENT / ROAD / AREA(OPTIONAL)',
                                              hintStyle: style12,
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 12.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width: 380,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          border: Border.all(
                                              color: Colors.grey, width: 0.2),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 20.0, left: 15.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  'e.g Ring the bell on the red gate',
                                              hintStyle: style12,
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 12.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Save As",
                                        style: style13,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.center,
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedIndex =
                                                    0; // "At Work" selected
                                              });
                                              // Handle tap for "At Work"
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                color: selectedIndex == 0
                                                    ? Colors.orangeAccent
                                                    : Colors.white,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(9.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.work_history,
                                                      size: 15,
                                                      color: Colors.orange,
                                                    ),
                                                    Text(
                                                      'At Work',
                                                      style: style14.copyWith(
                                                        color:
                                                            selectedIndex == 0
                                                                ? Colors.amber
                                                                : Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedIndex = 1;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                color: selectedIndex == 1
                                                    ? Colors.orangeAccent
                                                    : Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(9.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.house,
                                                      size: 15,
                                                      color: Colors.orange,
                                                    ),
                                                    Text(
                                                      'At Home',
                                                      style: style14.copyWith(
                                                        color:
                                                            selectedIndex == 1
                                                                ? Colors.amber
                                                                : Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedIndex = 1;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                color: selectedIndex == 1
                                                    ? Colors.orangeAccent
                                                    : Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(9.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .location_on_outlined,
                                                      size: 15,
                                                      color: Colors.orange,
                                                    ),
                                                    Text(
                                                      'Others',
                                                      style: style14.copyWith(
                                                        color:
                                                            selectedIndex == 1
                                                                ? Colors.amber
                                                                : Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      ElevatedButtonWidget(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PersonalDetailsView()),
                                          );
                                        },
                                        text: 'Save Address', height: 55,width: 380,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        text: 'Confirm Location', height: 55, width: 380,
                      ))
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
