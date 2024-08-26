import 'package:flutter/material.dart';
import 'package:food_app_new/thank_you_page.dart';
import 'package:food_app_new/widgets/elevated_button_widget.dart';

class RateDeliveryPartnerView extends StatelessWidget {
  const RateDeliveryPartnerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Rate Your Delivery Partner",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_sharp)),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 232,
                width: 233,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/new image.png"),
                    fit: BoxFit
                        .cover, // Ensures the image fits inside the circle
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Delivered by Radhakrishnan B",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                        size: 50,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                        size: 50,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                        size: 50,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                        size: 50,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border_outlined,
                        color: Colors.orange,
                        size: 50,
                      )),
                ],
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: ElevatedButtonWidget(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThankYouView()));
                },
                text: "Submit",
                height: 55,
                width: 350),
          )
        ],
      ),
    );
  }
}
