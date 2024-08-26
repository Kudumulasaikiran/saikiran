import 'package:flutter/material.dart';
import 'package:food_app_new/New_Cart/Cart_page.dart';
import 'package:food_app_new/welcome_splash_3.dart';
import 'package:food_app_new/widgets/elevated_button_widget.dart';
import 'package:food_app_new/widgets/cart_page_widgets.dart';
import 'colors.dart';
import 'order_cofirmed_view.dart';

class CartPage2 extends StatefulWidget {
  const CartPage2({super.key});

  @override
  State<CartPage2> createState() => _CartPage2State();
}

class _CartPage2State extends State<CartPage2> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FB),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_sharp)),
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(fontSize: 35),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25.0, left: 25),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Image.asset(
                              'assets/images/foodtruckicon.png',
                              height: 50,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Awesome Fruit Restaurant',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: CartPageMainText),
                              ),
                              Text(
                                '50-55 mins to Home',
                                style: TextStyle(color: CartSmallTextColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: homeIconBgColor),
                                child: Icon(
                                  Icons.home_outlined,
                                  color: homeIconColor,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Bacangan, Sambit',
                                      style: TextStyle(
                                          color: Colors.grey.shade800),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 18.0),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.keyboard_arrow_down_rounded)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'Restaurants/Food Items',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              RestFoodContainer(),
              SizedBox(
                height: 20,
              ),
              RestFoodContainer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Scaffold()),
                    );
                  },
                  child: Container(
                      height: 45,
                      width: screenWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: SeeNearCartColor,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "See near 500 m shop",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: SeeNearCartColor,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/images/arrowright.png",
                            scale: 2.9,
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 50,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/verify.png',
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Coupon Code',
                              style: TextStyle(
                                  fontSize: 16, color: CartPageDarkText),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Bill Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 260,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20, bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            'Item Total',
                            style: TextStyle(color: BillDetailsTextColor),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 250),
                            child: Text(
                              '₹750',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 350,
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20, bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            'Platform fee',
                            style: TextStyle(color: BillDetailsTextColor),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 250),
                            child: Text(
                              '₹5',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 350,
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20, bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            'GST and Restaurant Charges',
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 150),
                            child: Text(
                              '₹50',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 350,
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            'Delivery partner fee ()up to 4 km',
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 135),
                            child: Text(
                              '50',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 350,
                      color: Colors.grey.shade300,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 280),
                            child: Text(
                              '855',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 205, top: 15, bottom: 10),
                child: Text(
                  'Cancellations details',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Container(
                height: 70,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5),
                  child: Text(
                    'Once food is packed up form the shope there is '
                    '\nno cancellation.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButtonWidget(
                  text: "Confirm Order",
                  height: 55,
                  width: 380,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrderConfirmedView()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
