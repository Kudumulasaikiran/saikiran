import 'package:flutter/material.dart';
import 'package:food_app_new/stylePages.dart';

class ProfileContainerWidget extends StatefulWidget {
  final String text1;
  final IconData icon;
  final VoidCallback? iconPressed;
  final String text2;

  const ProfileContainerWidget(
      {super.key,
      required this.text1,
      required this.text2,
      required this.icon,
       this.iconPressed});

  @override
  State<ProfileContainerWidget> createState() => _ProfileContainerWidgetState();
}

class _ProfileContainerWidgetState extends State<ProfileContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          widget.icon,
          color: Colors.grey,
          size: 35,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Text(
                  widget.text1,
                  style: style17,
                ),
              ),
              Text(
                widget.text2,
                style: style15,
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: widget.iconPressed,
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
              size: 20,
            )),
      ],
    );
  }
}
