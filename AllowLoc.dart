import 'package:flutter/material.dart';
import 'package:food_app_new/Delivery.dart';
import 'package:food_app_new/widgets/elevated_button_widget.dart';
import 'SearchLoc.dart';
import 'Textstyle.dart';

class AllowLocationView extends StatefulWidget {
  const AllowLocationView({super.key});

  @override
  State<AllowLocationView> createState() => _AllowLocationViewState();
}

class _AllowLocationViewState extends State<AllowLocationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/building.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("What's your location?", style: style),
                        Text(
                          "we need to your show available",
                          style: style2,
                        ),
                        Text(
                          "food & restaurants",
                          style: style2,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButtonWidget(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => delloc()),
                            // );
                          },
                          text: 'Allow location access', height: 55,width: 380,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SearchLocationView()));
                          },
                          child: Text(
                            "Enter Location Manually",
                            style: style3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
