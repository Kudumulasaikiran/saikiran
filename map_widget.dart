import 'package:flutter/material.dart';
import 'package:food_app_new/positioned_images.dart';
import 'package:food_app_new/user_info.dart';

import 'back_button_images.dart';
import 'background_image.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        const PositionedImages(),
        const BackButtonWidget(),
        Positioned(
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              DropdownMenu(dropdownMenuEntries: [],),
              SizedBox(height: 16),
              UserInfo(),
            ],
          ),
        ),
      ],
    );
  }
}