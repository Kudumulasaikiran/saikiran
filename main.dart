import 'package:flutter/material.dart';
import 'package:food_app_new/logo_view.dart';
import 'package:food_app_new/personal_details_view.dart';
import 'package:food_app_new/profile_page_view.dart';
import 'package:food_app_new/welcome_splash_1.dart';
import 'package:food_app_new/edit_profile_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'AllowLoc.dart';
import 'List_screen/restaurant_page_view.dart';
import 'add_delivery_location.dart';
import 'fav_page_view.dart';
import 'show_rating_page.dart';
import 'order_details_page_view.dart';
import 'rate_delivery_partner.dart';
import 'order_history_view.dart';
import 'payment_option_view.dart';
import 'map_widget.dart';
import 'otp_screen_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShopRatingPage(),
    );
  }
}
