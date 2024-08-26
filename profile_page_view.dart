import 'package:flutter/material.dart';
import 'package:food_app_new/edit_profile_view.dart';
import 'package:food_app_new/order_history_view.dart';
import 'package:food_app_new/payment_option_view.dart';
import 'package:food_app_new/personal_details_view.dart';
import 'package:food_app_new/profile_container_widget.dart';
import 'package:food_app_new/stylePages.dart';

import 'add_delivery_location.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({super.key});

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  bool _notificationsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: style13,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/akash.png',
                    scale: 4.5,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jack Sparrow",
                        style: style14,
                      ),
                      Text(
                        "rojar.j@prometheansoftwares.com",
                        style: style15,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              // General section
              Text(
                "General",
                style: style18,
              ),
              SizedBox(
                height: 10,
              ),
              ProfileContainerWidget(
                  text1: "Account Information",
                  icon: Icons.person_outline_sharp,
                  text2: "Change your account information",
                  iconPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfileView()));
                  }),
              Divider(
                color: Colors.blueGrey,
                height: 20,
                thickness: 0.2,
              ),
              SizedBox(
                height: 7,
              ),
              ProfileContainerWidget(
                text1: "Order History",
                icon: Icons.shopping_bag,
                text2: "You will see your ordered History",
                iconPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderHistoryView()));
                },
              ),
              Divider(
                color: Colors.blueGrey,
                height: 20,
                thickness: 0.2,
              ),
              SizedBox(
                height: 7,
              ),
              ProfileContainerWidget(
                  text1: "Payment Methods",
                  icon: Icons.payment_rounded,
                  text2: "Add your credit or debit card",
                  iconPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentOptionsPage()));
                  }),
              Divider(
                color: Colors.blueGrey,
                height: 20,
                thickness: 0.2,
              ),
              SizedBox(
                height: 7,
              ),
              ProfileContainerWidget(
                  text1: "Delivery Locations",
                  icon: Icons.location_on_outlined,
                  text2: "change your Delivery Locations",
                  iconPressed: () {
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeliveryLocationPage()));
                    }
                  }),
              Divider(
                color: Colors.blueGrey,
                height: 20,
                thickness: 0.2,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Notifications",
                style: style18,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.notification_add,
                    color: Colors.grey,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 85.0),
                          child: Text(
                            "Notifications",
                            style: style17,
                          ),
                        ),
                        Text(
                          "you will receive daily updates",
                          style: style15,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Divider(
                          color: Colors.blueGrey,
                          height: 20,
                          thickness: 0.2,
                        ),
                      ],
                    ),
                  ),
                  Switch(
                    value: _notificationsEnabled,
                    onChanged: (bool value) {
                      setState(() {
                        _notificationsEnabled = value;
                      });
                    },
                    activeColor: Colors.orangeAccent,
                    // Set the color when switch is ON
                    inactiveThumbColor: Colors.white,
                    // Optional: Set the color when switch is OFF
                    inactiveTrackColor: Colors.orangeAccent,
                    // Optional: Set the color of the track when switch is OFF
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
