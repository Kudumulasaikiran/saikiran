import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_new/rate_delivery_partner.dart';
import 'package:food_app_new/widgets/elevated_button_widget.dart';

class ShopRatingPage extends StatefulWidget {
  const ShopRatingPage({super.key});

  @override
  State<ShopRatingPage> createState() => _ShopRatingPageState();
}

class _ShopRatingPageState extends State<ShopRatingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text('Rate the shop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/deliveryrating.png',
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Food for awesome Fruit Restaurant',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 50),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border,
                        size: 40,
                        color: Color(0xFFFB9400),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border,
                        size: 40,
                        color: Color(0xFFFB9400),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border,
                        size: 40,
                        color: Color(0xFFFB9400),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border,
                        size: 40,
                        color: Color(0xFFFB9400),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border,
                        size: 40,
                        color: Color(0xFFFB9400),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 60),
                      child: Text(
                        'Margherita Flammmkuchen',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 50),
                        child: Text(
                          'Margherita Flammmkuchen',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up))
                    ],
                  ),
                  Container(
                    height: 2,
                    width: 270,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            size: 33,
                            color: Color(0xFFFB9400),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            size: 33,
                            color: Color(0xFFFB9400),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            size: 33,
                            color: Color(0xFFFB9400),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            size: 33,
                            color: Color(0xFFFB9400),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            size: 33,
                            color: Color(0xFFFB9400),
                          )),
                      Image.asset(
                        'assets/images/food1.png',
                        height: 33,
                        width: 33,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            ElevatedButtonWidget(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RateDeliveryPartnerView()));
                },
                text: "Next",
                height: 55,
                width: 380)
          ],
        ),
      ),
    );
  }
}
