import 'package:flutter/material.dart';

import 'Delivery.dart';
import 'Textformfield.dart';
import 'Textstyle.dart';

class Location2 extends StatefulWidget {
  Location2({Key? key}) : super(key: key);

  @override
  State<Location2> createState() => _Location2State();
}

class _Location2State extends State<Location2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Select Your Location",
              style: style4,
              textAlign: TextAlign.center,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => delloc()),
                  );
                },
                child: Text(
                  "On Map",
                  style: style5,
                ))
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 6.0, right: 6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTextField(hintText: "Search location"),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.album_rounded,
                            color: Colors.orange, size: 15),
                        Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Marie Oulgaret",
                            style: style6,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.0),
                      child: Text(
                        "Cuddalore Road, Edayarpalayam,",
                        style: style7,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.0),
                      child: Text(
                        "Thavalakuppa...",
                        style: style7,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.album_rounded,
                            color: Colors.orange, size: 15),
                        Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Marie Oulgaret",
                            style: style6,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.0),
                      child: Text(
                        "Cuddalore Road, Edayarpalayam,",
                        style: style7,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.0),
                      child: Text(
                        "Thavalakuppa...",
                        style: style7,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 150),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: Image.asset(
                  'assets/images/imagemap.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
