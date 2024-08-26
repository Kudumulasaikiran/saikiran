import 'package:flutter/material.dart';

class CustomSearchbar extends StatefulWidget {
  final String text;
  final IconData icondata;
  final Color iconcolor;
  final double iconsize;
  final VoidCallback onPressed;

  const CustomSearchbar(
      {super.key,
      required this.text,
      required this.icondata,
      required this.iconcolor,
      required this.iconsize,
      required this.onPressed});

  @override
  State<CustomSearchbar> createState() => _CustomSearchbarState();
}

class _CustomSearchbarState extends State<CustomSearchbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        height: 50,
        //width: screenWidth,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            hintText: widget.text,
            suffixStyle: TextStyle(fontSize: 18),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: widget.onPressed,
                    icon: Icon(
                      widget.icondata,
                      color: widget.iconcolor,
                      size: widget.iconsize,
                    ))),
            hintStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
