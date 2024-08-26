import 'package:flutter/material.dart';
import 'package:food_app_new/welcome_splash_3.dart';
import 'package:food_app_new/widgets/elevated_button_widget.dart';

import 'personal_details_view.dart';

class WelcomeSplash2 extends StatefulWidget {
  const WelcomeSplash2({super.key});

  @override
  State<WelcomeSplash2> createState() => _WelcomeSplash2State();
}

class _WelcomeSplash2State extends State<WelcomeSplash2> {
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
                "assets/images/splashimage2.png",
                width: screenWidth,
              ),
            ),
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
            ElevatedButtonWidget(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeSplash3()),
                );
              },
              text: 'Next',height: 55, width: 380,
            )
          ],
        ),
      ),
    );
  }
}
// import 'dart:math' as math;
// import 'package:flutter/material.dart';
// import 'package:food_app_new/welcome_splash_1.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key});
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 20), // Adjust the duration as needed
//     )..repeat();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: screenHeight,
//               width: screenWidth,
//               child: Stack(
//                 children: [
//                   CustomContainer(
//                     text1: 'Skip',
//                     imagePath: 'assets/food.png',
//                     text2: 'Street food',
//                     text3:
//                     'We prepare all dishes with love and passion Especially for you!',
//                     text4: 'Next', onNextPressed: () {  }, onNextPressed1: () {  },
//                   ),CustomContainer(
//                     text1: 'Skip',
//                     imagePath: 'assets/food.png',
//                     text2: 'Street food',
//                     text3:
//                     'We prepare all dishes with love and passion Especially for you!',
//                     text4: 'Next', onNextPressed: () {  }, onNextPressed1: () {  },
//                   ),
//                   AnimatedBuilder(
//                     animation: _controller,
//                     builder: (context, child) {
//                       return Center(
//                         child: Transform.rotate(
//                           angle: -_controller.value *
//                               2 *
//                               math.pi, // Adjusted angle
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               child!,
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                     child: Container(
//                       height: 300,
//                       width: 350,
//                       decoration: BoxDecoration(
//                         gradient: SweepGradient(
//                           startAngle: 0.5,
//                           endAngle: math.pi * 2,
//                           colors: [
//                             Colors.white30.withOpacity(0.5),
//                             Colors.transparent,
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
