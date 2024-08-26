import 'package:flutter/material.dart';
import 'Delivery.dart';
import 'Textformfield.dart';
import 'Textstyle.dart';

class SearchLocationView extends StatefulWidget {
  const SearchLocationView({Key? key}) : super(key: key);

  @override
  State<SearchLocationView> createState() => _SearchLocationViewState();
}

class _SearchLocationViewState extends State<SearchLocationView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Select Your Location",
                  style: style4,
                  textAlign: TextAlign.center,
                ),
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
          child: Column(
            children: [
              CustomTextField(hintText: "Search location"),
              SizedBox(height: 260),
              Image.asset(
                'assets/images/imagemap.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
