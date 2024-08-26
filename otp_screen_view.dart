import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:food_app_new/widgets/elevated_button_widget.dart';

import 'AllowLoc.dart';

class OtpView extends StatefulWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  _OtpViewState createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  late TextEditingController phoneNumberController;
  String selectedCountryCode = '+1';

  @override
  void initState() {
    super.initState();
    phoneNumberController = TextEditingController();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Enter your mobile number \nto get OTP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 8),
              const Text(
                "Enter your phone number, we will send a \nverification code to your number",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: phoneNumberController,
                  decoration: const InputDecoration(
                    hintText: ' Phone Number',
                    border: OutlineInputBorder(),
                    prefixIcon: CountryCodePicker(
                      onChanged: print,
                      initialSelection: 'IT',
                      favorite: ['+39', 'FR'],
                      showCountryOnly: false,
                      showOnlyCountryWhenClosed: false,
                      alignLeft: false,
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              const SizedBox(height: 500),
              ElevatedButtonWidget(
                onPressed: () {
                  String phoneNumber =
                      selectedCountryCode + phoneNumberController.text;
                  print('Phone Number: $phoneNumber');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllowLocationView()),
                  );
                },
                text: 'Next', height: 55, width: 380,
              )
            ],
          ),
        ),
      ),
    );
  }
}
