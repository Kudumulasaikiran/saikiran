// import 'package:flutter/material.dart';
//
// import 'New_Cart/list_page.dart';
//
// class CartPage extends StatefulWidget {
//   const CartPage({super.key});
//
//   @override
//   State<CartPage> createState() => _CartPageState();
// }
//
// class _CartPageState extends State<CartPage> {
//   int _counter = 0;
//
//   void _decrement() {
//     setState(() {
//       _counter--;
//     });
//   }
//
//   void _increment() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   int _counter1 = 0;
//
//   void _decrement1() {
//     setState(() {
//       _counter1--;
//     });
//   }
//
//   void _increment1() {
//     setState(() {
//       _counter1++;
//     });
//   }
//
//   int _counter2 = 0;
//
//   void _decrement2() {
//     setState(() {
//       _counter2--;
//     });
//   }
//
//   void _increment2() {
//     setState(() {
//       _counter2++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade100,
//         leading: IconButton(
//             onPressed: () {}, icon: Icon(Icons.arrow_back_ios_sharp)),
//         centerTitle: true,
//         title: Text('Cart'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
//               child: Container(
//                 height: 200,
//                 width: 410,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10, top: 20),
//                         child: Row(
//                           children: [
//                             Container(
//                               color: Colors.transparent,
//                               child: Image.asset(
//                                 'assets/images/truck1.jpg',
//                                 fit: BoxFit.cover,
//                                 height: 50,
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.only(bottom: 10, left: 15),
//                               child: Column(
//                                 children: [
//                                   const Text(
//                                     'Awesome Fruit Restaurant',
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(right: 60),
//                                     child: Text(
//                                       '50-55 mins to Home',
//                                       style: TextStyle(
//                                           color: Colors.grey.shade800),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 285, bottom: 0),
//                         child: VerticalDottedLine(
//                           height: 45,
//                           color: Colors.orange,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 17),
//                             child: Container(
//                               height: 40,
//                               width: 40,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(50),
//                                   color: Colors.grey.shade100),
//                               child: Icon(
//                                 Icons.home_outlined,
//                                 color: Colors.orange,
//                                 size: 30,
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20),
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 118),
//                                   child: Text(
//                                     'Delivery',
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 60),
//                                   child: Text(
//                                     'Bacangan, Sambit',
//                                     style:
//                                         TextStyle(color: Colors.grey.shade800),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 45),
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(Icons.keyboard_arrow_down_rounded)),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 280, top: 20),
//               child: Text(
//                 'Food items',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 0),
//               child: Container(
//                 height: 270,
//                 width: 380,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12)),
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 10, left: 10),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 20, bottom: 7),
//                         child: Row(
//                           children: [
//                             Container(
//                               height: 60,
//                               width: 60,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(
//                                     8), // Add the border radius here
//                                 child: Image.asset(
//                                   'assets/images/food.jpg',
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.only(left: 12),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(top: 0),
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsets.only(bottom: 10),
//                                           child: Text(
//                                             'Margherita Flammkuchen',
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: EdgeInsets.only(
//                                               top: 10, right: 135),
//                                           child: Text(
//                                             ' ₹250',
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                                 padding: const EdgeInsets.only(left: 25),
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     // Add your action here when the container is tapped
//                                     _decrement(); // Assuming _increment is your desired function
//                                   },
//                                   child: Container(
//                                     height: 25,
//                                     width: 25,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(50),
//                                       color: Colors.orange,
//                                     ),
//                                     child: Padding(
//                                       padding: EdgeInsets.all(0),
//                                       child: Icon(Icons.minimize_sharp,
//                                           size: 15, color: Colors.white),
//                                     ),
//                                   ),
//                                 )),
//                             Text(
//                               ' $_counter ',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 // Add your action here when the container is tapped
//                                 _increment(); // Assuming _increment is your desired function
//                               },
//                               child: Container(
//                                 height: 25,
//                                 width: 25,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(50),
//                                   color: Colors.orange,
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(5),
//                                   child: Icon(Icons.add,
//                                       size: 15, color: Colors.white),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 15, bottom: 7),
//                         child: Row(
//                           children: [
//                             Container(
//                               height: 60,
//                               width: 60,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(
//                                     8), // Add the border radius here
//                                 child: Image.asset(
//                                   'assets/images/food.jpg',
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.only(left: 12),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(top: 0),
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsets.only(bottom: 10),
//                                           child: Text(
//                                             'Margherita Flammkuchen',
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: EdgeInsets.only(
//                                               top: 10, right: 135),
//                                           child: Text(
//                                             ' ₹250',
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                                 padding: const EdgeInsets.only(left: 25),
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     // Add your action here when the container is tapped
//                                     _decrement1(); // Assuming _increment is your desired function
//                                   },
//                                   child: Container(
//                                     height: 25,
//                                     width: 25,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(50),
//                                       color: Colors.orange,
//                                     ),
//                                     child: Padding(
//                                       padding: EdgeInsets.all(0),
//                                       child: Icon(Icons.minimize_sharp,
//                                           size: 15, color: Colors.white),
//                                     ),
//                                   ),
//                                 )),
//                             Text(
//                               ' $_counter1 ',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 // Add your action here when the container is tapped
//                                 _increment1(); // Assuming _increment is your desired function
//                               },
//                               child: Container(
//                                 height: 25,
//                                 width: 25,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(50),
//                                   color: Colors.orange,
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(5),
//                                   child: Icon(Icons.add,
//                                       size: 15, color: Colors.white),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 15),
//                         child: Row(
//                           children: [
//                             Container(
//                               height: 60,
//                               width: 60,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(
//                                     8), // Add the border radius here
//                                 child: Image.asset(
//                                   'assets/images/food.jpg',
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.only(left: 12),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(top: 0),
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsets.only(bottom: 10),
//                                           child: Text(
//                                             'Margherita Flammkuchen',
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: EdgeInsets.only(
//                                               top: 10, right: 135),
//                                           child: Text(
//                                             ' ₹250',
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                                 padding: const EdgeInsets.only(left: 25),
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     // Add your action here when the container is tapped
//                                     _decrement2(); // Assuming _increment is your desired function
//                                   },
//                                   child: Container(
//                                     height: 25,
//                                     width: 25,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(50),
//                                       color: Colors.orange,
//                                     ),
//                                     child: Padding(
//                                       padding: EdgeInsets.all(0),
//                                       child: Icon(Icons.minimize_sharp,
//                                           size: 15, color: Colors.white),
//                                     ),
//                                   ),
//                                 )),
//                             Text(
//                               ' $_counter2 ',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 // Add your action here when the container is tapped
//                                 _increment2(); // Assuming _increment is your desired function
//                               },
//                               child: Container(
//                                 height: 25,
//                                 width: 25,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(50),
//                                   color: Colors.orange,
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(5),
//                                   child: Icon(Icons.add,
//                                       size: 15, color: Colors.white),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20, bottom: 20),
//               child: Container(
//                 height: 50,
//                 width: 380,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(8)),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: ClipRRect(
//                         borderRadius:
//                             BorderRadius.circular(40), // Set the border radius
//                         child: CircleAvatar(
//                           backgroundColor: Colors.transparent,
//                           child: Image.asset(
//                             'assets/images/tick.jpg',
//                             height: 30, // Specify the height of the image
//                             width: 30, // Specify the width of the image
//                             fit: BoxFit
//                                 .cover, // Ensure the image covers the entire area
//                           ),
//                         ),
//                       ),
//                     ),
//
//                     Padding(
//                       padding: EdgeInsets.only(left: 20),
//                       child: Text(
//                         'Coupon Code',
//                         style: TextStyle(fontSize: 16, color: Colors.black),
//                       ),
//                     ),
//                     // Added to push the icon to the rightmost side
//                     Padding(
//                       padding: const EdgeInsets.only(left: 140),
//                       child: IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.chevron_right,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 290, bottom: 10),
//               child: Text(
//                 'Bill Details',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//               ),
//             ),
//             Container(
//               height: 260,
//               width: 380,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(8)),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 20, top: 20, bottom: 8),
//                     child: Row(
//                       children: [
//                         Text(
//                           'Item Total',
//                           style: TextStyle(color: Colors.grey.shade700),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 250),
//                           child: Text(
//                             '₹750',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 1,
//                     width: 350,
//                     color: Colors.grey.shade300,
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 20, top: 20, bottom: 8),
//                     child: Row(
//                       children: [
//                         Text(
//                           'Platform fee',
//                           style: TextStyle(color: Colors.grey.shade700),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 250),
//                           child: Text(
//                             '₹5',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 1,
//                     width: 350,
//                     color: Colors.grey.shade300,
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 20, top: 20, bottom: 8),
//                     child: Row(
//                       children: [
//                         Text(
//                           'GST and Restaurant Charges',
//                           style: TextStyle(color: Colors.grey.shade700),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 140),
//                           child: Text(
//                             '₹50',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 1,
//                     width: 350,
//                     color: Colors.grey.shade300,
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 20, top: 20, bottom: 8),
//                     child: Row(
//                       children: [
//                         Text(
//                           'Delivery partner fee ()up to 4 km',
//                           style: TextStyle(color: Colors.grey.shade700),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 125),
//                           child: Text(
//                             '50',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 1,
//                     width: 350,
//                     color: Colors.grey.shade300,
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 20, top: 20, bottom: 8),
//                     child: Row(
//                       children: [
//                         Text(
//                           'Total',
//                           style: TextStyle(
//                               color: Colors.black, fontWeight: FontWeight.bold),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 292),
//                           child: Text(
//                             '855',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 205, top: 15, bottom: 10),
//               child: Text(
//                 'Cancellations details',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18),
//               ),
//             ),
//             Container(
//               height: 70,
//               width: 380,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(8)),
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 10, left: 5),
//                 child: Text(
//                   'Once food is packed up form the shope there is '
//                   '\nno cancellation.',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Padding(
//                 padding: const EdgeInsets.only(top: 20, bottom: 20),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Add your action here when the button is pressed
//                     print("Button pressed, proceed to pay");
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.zero,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                     elevation: 0,
//                   ),
//                   child: Ink(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         colors: [Colors.orange.shade900, Colors.yellow],
//                       ),
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     child: Container(
//                       height: 55,
//                       width: 380,
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Proceed to pay",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
