import 'package:flutter/material.dart';
import 'package:food_app_new/List_screen/favorite_list_page.dart';
import 'package:food_app_new/cart_page_2.dart';
import 'package:food_app_new/edit_profile_view.dart';
import 'Search_Page.dart';
import 'fav_page_view.dart';
import 'profile_page_view.dart';

final _formkey = GlobalKey<FormState>();

class CustomBottomBar extends StatelessWidget {
  Color _homeColor = Colors.blue;
  Color _searchColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Form(
        key: _formkey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                Icons.home,
                size: 30,
                color: Colors.white, // Icon color
              ),
            ),
            IconButton(
                onPressed: () {
                  if (_formkey.currentState!.validate())
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: Icon(
                  Icons.search,
                  size: 30,
                )),
            IconButton(
              icon: const Icon(
                Icons.favorite_border_rounded,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FavouriteScreenView()));
              },
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePageView()),
                );
              },
              child: const CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('assets/images/food.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:mainfoodproject/Search_Page.dart';

final _formkey = GlobalKey<FormState>();

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity, // Adjust width to fit the screen
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Form(
        key: GlobalKey<FormState>(), // Use a separate GlobalKey
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                Icons.home,
                size: 30,
                color: Colors.white, // Icon color
              ),
            ),
            IconButton(
              onPressed: () {
                if (_formkey.currentState!.validate())
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(
                Icons.search,
                size: 30,
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
              backgroundImage: AssetImage('lib/Image/profile-1.png'),
            )
          ],
        ),
      ),
    );
  }
}
*/
