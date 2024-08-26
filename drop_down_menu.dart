import 'package:flutter/material.dart';

class DropdownMenu extends StatelessWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 470,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: SizedBox(
              width: 50,
              child: DropdownButton<String>(
                isExpanded: true,
                underline: const SizedBox(),
                icon: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/restaurant.png',
                            width: 27, height: 27),
                        const SizedBox(width: 60),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Restaurant 1',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text("Resto Paramato Bapo"),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 2),
                            child: Center(
                              child: Text(
                                "Primary",
                                style: TextStyle(color: Colors.green[900]),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 30),
                    const Icon(Icons.arrow_drop_up),
                  ],
                ),
                iconSize: 36,
                items: <String>[
                  'Restaurant 1',
                  'Restaurant 2',
                  'Delivery',
                  'Takeout',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        value == 'Delivery'
                            ? Image.asset(
                            'assets/images/clock.png',
                            width: 20,
                            height: 20,
                            color: Colors.blue)
                            : value == 'Takeout'
                            ? Image.asset(
                            'assets/images/mark.png',
                            width: 20,
                            height: 20)
                            : Image.asset(
                            'assets/images/restaurant.png',
                            width: 20,
                            height: 20),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              value,
                              style: value == 'Delivery' ||
                                  value == 'Your Delivery'
                                  ? const TextStyle(color: Colors.grey)
                                  : null,
                            ),
                            Text(
                              value == 'Delivery'
                                  ? '10 minutes'
                                  : value == 'Takeout'
                                  ? '15 minutes'
                                  : 'Restaurant details',
                              style: value == 'Delivery' ||
                                  value == 'Takeout'
                                  ? const TextStyle(fontWeight: FontWeight.bold)
                                  : null,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}