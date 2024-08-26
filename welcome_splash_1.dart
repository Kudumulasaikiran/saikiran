import 'package:flutter/material.dart';
import 'package:food_app_new/welcome_splash_2.dart';
import 'package:food_app_new/widgets/elevated_button_widget.dart';

import 'personal_details_view.dart';

class WelcomeSplash1 extends StatefulWidget {
  const WelcomeSplash1({super.key});

  @override
  State<WelcomeSplash1> createState() => _WelcomeSplash1State();
}

class _WelcomeSplash1State extends State<WelcomeSplash1> {
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.0),
              child: Image.asset(
                "assets/images/splashimage1.png",
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
            Column(
              children: [
                ElevatedButtonWidget(height: 55, width: 380,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeSplash2()),
                    );
                  },
                  text: 'Next',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'Welcome_Splash_Pages.dart';
//
// class OnboardingPages extends StatefulWidget {
//   const OnboardingPages({Key? key}) : super(key: key);
//
//   @override
//   State<OnboardingPages> createState() => _OnboardingPagesState();
// }
//
// class _OnboardingPagesState extends State<OnboardingPages> {
//   int _currentIndex = 0;
//   late PageController _pageController;
//
//   List<Widget> stepContent = [
//     WelcomeSplashPages1(),
//     WelcomeSplashPages2(),
//     WelcomeSplashPages3()
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: _currentIndex);
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   void _onTap(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//     _pageController.animateToPage(
//       index,
//       duration: Duration(milliseconds: 300),
//       curve: Curves.ease,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 20,
//           ),
//           Container(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15.0),
//               child: Row(
//                 children: [
//                   CustomSplash(
//                     currentIndex: _currentIndex,
//                     index: 0,
//                     onTap: _onTap,
//                   ),
//                   CustomSplash(
//                     currentIndex: _currentIndex,
//                     index: 1,
//                     onTap: _onTap,
//                   ),
//                   CustomSplash(
//                     currentIndex: _currentIndex,
//                     index: 2,
//                     onTap: _onTap,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: PageView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               controller: _pageController,
//               itemCount: 3,
//               itemBuilder: (context, index) {
//                 return Scaffold(
//                   body: Center(
//                     child: stepContent[index],
//                   ),
//                   appBar: AppBar(
//                     automaticallyImplyLeading: false,
//                     actions: [
//                       Padding(
//                         padding: EdgeInsets.only(right: 30.0),
//                         child: TextButton(
//                           onPressed: () {
//                             // Handle Skip button tap
//                           },
//                           child: Text(
//                             "Skip",
//                             style: TextStyle(color: Colors.black),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all( 40),
//             child: Center(
//               child: Container(
//                 height: 42,
//                 width: 320,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     if (_currentIndex < 2) {
//                       _onTap(_currentIndex + 1);
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orange,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Text(
//                     "Next",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class CustomSplash extends StatelessWidget {
//   final int index;
//   final int currentIndex;
//   final Function(int) onTap;
//
//   CustomSplash({
//     required this.currentIndex,
//     required this.index,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "",
//       style: TextStyle(fontSize: 1),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class CustomContainer extends StatefulWidget {
//   final String text1;
//   final String imagePath;
//   final String text2;
//   final String text3;
//   final String text4;
//   final VoidCallback onNextPressed;
//   final VoidCallback onNextPressed1;
//   const CustomContainer({
//     super.key,
//     required this.text1,
//     required this.imagePath,
//     required this.text2,
//     required this.text3,
//     required this.text4, required this.onNextPressed, required this.onNextPressed1,
//   });
//
//   @override
//   State<CustomContainer> createState() => _CustomContainerState();
// }
//
// class _CustomContainerState extends State<CustomContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 260),
//             child: TextButton(
//               onPressed: widget.onNextPressed1,
//               child: Text(
//                 widget.text1,
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//           Container(
//             child: Image(
//               image: AssetImage(
//                 widget.imagePath,
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 80),
//             child: Text(
//               widget.text2,
//               style: TextStyle(color: Colors.white, fontSize: 22),
//             ),
//           ),
//           Text(
//             widget.text3,
//             style: TextStyle(color: Colors.white),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 40),
//             child: Center(
//               child: Container(
//                 height: 42,
//                 width: 320,
//                 child: ElevatedButton(
//                   onPressed: widget.onNextPressed,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orange,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Text(
//                     widget.text4,
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
