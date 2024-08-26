import 'package:flutter/material.dart';

import 'Custom_BottomNavigationBar.dart';

class FavouriteScreenView extends StatefulWidget {
  const FavouriteScreenView({super.key});

  @override
  State<FavouriteScreenView> createState() => _FavouriteScreenViewState();
}

class _FavouriteScreenViewState extends State<FavouriteScreenView> {
  final List<Restaurant> restaurants = [
    Restaurant(
      name: "Awesome Fruit Restaurant",
      address: "13th Street. 47 W 13th St, NY",
      distance: "3 min - 1.1 km",
      rating: 4.9,
      imageUrl: "assets/images/food3.png",
    ),
    Restaurant(
      name: "Pizza Lover Company",
      address: "78th Street. 88 W 21th St, NY",
      distance: "4 min - 1.5 km",
      rating: 4.9,
      imageUrl: "assets/images/food3.png",
    ),
    Restaurant(
      name: "Chicken Fried Restaurant",
      address: "132th Street. 41 W 10th St, NY",
      distance: "5 min - 1.7 km",
      rating: 4.9,
      imageUrl: "assets/images/food3.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: restaurants.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  restaurants[index].imageUrl,
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(restaurants[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 16),
                      Text(restaurants[index].address),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 16),
                      SizedBox(width: 4),
                      Text(restaurants[index].distance),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Text(restaurants[index].rating.toString()),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child:
                            Icon(Icons.favorite, color: Colors.red, size: 24),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

class Restaurant {
  final String name;
  final String address;
  final String distance;
  final double rating;
  final String imageUrl;

  Restaurant({
    required this.name,
    required this.address,
    required this.distance,
    required this.rating,
    required this.imageUrl,
  });
}
