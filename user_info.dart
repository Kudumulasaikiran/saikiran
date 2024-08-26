import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 470,
      height: 130,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Row(
            children: [
              Image(
                image: AssetImage('assets/images/akash.png'),
                width: 55,
                height: 55,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Akash',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "Delivery partner",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.star, color: Colors.yellow),
                      Text(
                        "(4,6)",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 16),
              Image(
                image: AssetImage('assets/images/call.png'),
                width: 55,
                height: 55,
              ),
            ],
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}