import 'dart:math' as math;
import 'package:flutter/material.dart';

class WelcomeSplashPages1 extends StatefulWidget {
  const WelcomeSplashPages1({Key? key});

  @override
  State<WelcomeSplashPages1> createState() => _WelcomeSplashPages1State();
}

class _WelcomeSplashPages1State extends State<WelcomeSplashPages1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RotationTransition(
            turns: _controller,
            child: Image.asset(
              "assets/images/stackbackground.png",
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/splashimage1.png",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeSplashPages2 extends StatefulWidget {
  const WelcomeSplashPages2({Key? key});

  @override
  State<WelcomeSplashPages2> createState() => _WelcomeSplashPages2State();
}

class _WelcomeSplashPages2State extends State<WelcomeSplashPages2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          RotationTransition(
            turns: _controller,
            child: Image.asset(
              "assets/images/stackbackground.png",
              fit: BoxFit.fitWidth,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Padding(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeSplashPages3 extends StatefulWidget {
  const WelcomeSplashPages3({Key? key});

  @override
  State<WelcomeSplashPages3> createState() => _WelcomeSplashPages3State();
}

class _WelcomeSplashPages3State extends State<WelcomeSplashPages3>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          RotationTransition(
            turns: _controller,
            child: Image.asset(
              "assets/images/stackbackground.png",
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.0),
                  child: Image.asset(
                    "assets/images/splashimage3.png",
                    width: screenWidth,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Street Food",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "We Prepare all dishes with love and passion Especially for you!",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
