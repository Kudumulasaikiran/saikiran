import 'package:flutter/material.dart';

class CustomTextField1 extends StatelessWidget {
  final String hintText;

  const CustomTextField1({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 1),
        child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Container(
                  width: 500,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(color: Colors.grey,width: 0.2),
                    color: Colors.white,
                  ),
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'HOUSE/FLAT/BLOCK NO.',
                              border: InputBorder.none,
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 12.0),
                            ),
                          ),
                        ),
                      ),
                )
                  ),
                )
        );
  }
}
