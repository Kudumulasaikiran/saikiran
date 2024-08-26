import 'package:flutter/material.dart';
import 'package:food_app_new/otp_screen_view.dart';
import 'package:food_app_new/widgets/elevated_button_widget.dart';

class WelcomeSplash3 extends StatefulWidget {
  const WelcomeSplash3({super.key});

  @override
  State<WelcomeSplash3> createState() => _WelcomeSplash3State();
}

class _WelcomeSplash3State extends State<WelcomeSplash3> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0, top: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Scaffold()),
                );
              },
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: Image.asset(
              "assets/images/splashimage3.png",
            )),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Street Food",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "We Prepare all dishes with love and passion Especially for you!",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButtonWidget(height: 55, width: 380,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpView()),
                );
              },
              text: 'Next',
            )
          ],
        ),
      ),
    );
  }
}
