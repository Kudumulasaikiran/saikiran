import 'package:flutter/material.dart';
import 'package:food_app_new/widgets/elevated_button_widget.dart';

class DeliveryLocationPage extends StatefulWidget {
  @override
  State<DeliveryLocationPage> createState() => _DeliveryLocationPageState();
}

class _DeliveryLocationPageState extends State<DeliveryLocationPage> {
  final List<Map<String, String>> addresses = [
    {
      'title': 'Home',
      'address':
          'NO 1, Manavely Revenue Village, Puducherry, \nIndia (Marie Oulgaret)'
    },
    {
      'title': 'Home',
      'address':
          'NO 1, Manavely Revenue Village, Puducherry, \nIndia (Marie Oulgaret)'
    },
    {
      'title': 'Home',
      'address':
          'NO 1, Manavely Revenue Village, Puducherry, \nIndia (Marie Oulgaret)'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back
          },
        ),
        title: Text('Delivery Location'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: addresses.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.home, color: Colors.orange),
                              SizedBox(width: 8),
                              Text(
                                addresses[index]['title']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            addresses[index]['address']!,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedMiniButtonWidget(
                                  text: "Edit",
                                  height: 40,
                                  width: 150,
                                  onPressed: () {}),
                              ElevatedBlankButtonWidget(
                                  text: "Delete",
                                  height: 40,
                                  width: 150,
                                  onPressed: () {},
                                  color: Colors.red)
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButtonWidget(
              onPressed: () {},
              text: "Add New Address",
              height: 55,
              width: 380,
            )
          ],
        ),
      ),
    );
  }
}
