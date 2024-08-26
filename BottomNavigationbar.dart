import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity, // Adjust width to fit the screen
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  Colors.yellow,
                  Colors.orange,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds);
            },
            child: IconButton(
              onPressed: () {
                Navigator.pop(context); // Pop the current screen
              },
              icon: Icon(
                Icons.home,
                size: 30,
              ),
            ),
          ),
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  Colors.yellow,
                  Colors.orange
                ], // Define gradient colors
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds);
            },
            child: const Icon(
              Icons.search,
              size: 30,
              color: Colors.white, // Icon color
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.favorite_border_rounded,
              size: 30,
            ),
            onPressed: () {
              // Add onPressed logic here
            },
          ),
          const CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('assets/images/content.png'),
          )
        ],
      ),
    );
  }
}

class GradientIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final List<Color> gradientColors;

  GradientIconButton({
    required this.icon,
    this.size = 24.0,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: gradientColors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ).createShader(bounds);
      },
      child: IconButton(
        onPressed: () {}, // Adjust the onPressed action as needed
        icon: Icon(
          icon,
          size: size,
          color: Colors.white, // Icon color in case gradient is not applied
        ),
      ),
    );
  }
}
