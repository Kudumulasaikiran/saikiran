import 'package:flutter/material.dart';

class PositionedImages extends StatelessWidget {
  const PositionedImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 42,
          left: 155,
          child: Image(
            image: AssetImage('assets/images/user.png'),
            width: 67,
            height: 67,
          ),
        ),
        const Positioned(
          top: 165,
          left: 220,
          child: Image(
            image: AssetImage('assets/images/location.png'),
            width: 119,
            height: 119,
          ),
        ),
        const Positioned(
          top: 68,
          left: 200,
          child: Image(
            image: AssetImage('assets/images/way.png'),
            width: 119,
            height: 305,
          ),
        ),
        const Positioned(
          top: 262,
          left: 30,
          child: Image(
            image: AssetImage('assets/images/white.png'),
            width: 119,
            height: 119,
          ),
        ),
        const Positioned(
          top: 285,
          left: 69,
          child: Image(
            image: AssetImage('assets/images/restaurant.png'),
            width: 38,
            height: 38,
          ),
        ),
        const Positioned(
          top: 321,
          left: 78,
          child: Image(
            image: AssetImage('assets/images/one.png'),
            width: 20,
            height: 20,
          ),
        ),
        const Positioned(
          top: 350,
          right: 115,
          child: Image(
            image: AssetImage('assets/images/delivery.png'),
            width: 120,
            height: 120,
          ),
        ),
        const Positioned(
          top: 290,
          left: 98,
          child: Image(
            image: AssetImage('assets/images/path.png'),
            width: 150,
            height: 130,
          ),
        ),
        const Positioned(
          top: 192,
          left: 259,
          child: Stack(
            children: [
              Image(
                image: AssetImage('assets/images/restaurant.png'),
                width: 38,
                height: 38,
              ),
              Positioned(
                top: 27,
                left: 10,
                child: Image(
                  image: AssetImage('assets/images/numb.png'),
                  width: 22,
                  height: 22,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}