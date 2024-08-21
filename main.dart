import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentOptionsPage(),
    );
  }
}

class PaymentOptionsPage extends StatefulWidget {
  @override
  _PaymentOptionsPageState createState() => _PaymentOptionsPageState();
}

class _PaymentOptionsPageState extends State<PaymentOptionsPage> {
  String? _selectedUPIOption;
  String? _selectedCardOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_sharp),
        title: Text('Payment Options'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildOrderSummary(),
              SizedBox(height: 20),
              _buildPaymentSectionTitle('UPI'),
              _buildUPIOptions(),
              SizedBox(height: 20),
              _buildPaymentSectionTitle('Credit & Debit Cards'),
              _buildCardOptions(),
              SizedBox(height: 20),
              _buildPaymentSectionTitle('More Payment Options'),
              _buildMorePaymentOptions(),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 400,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('₹1,699',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(left: 138),
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle proceed to pay action
                            },
                            child: Text('Proceed to Pay'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  Colors.orangeAccent, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'view detailed bill',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderSummary() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Icon(Icons.shopping_bag, size: 50),
                Container(
                  height:
                      80, // Adjusted to make the circle big enough for the image
                  width: 80, // Same as height for a perfect circle
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("lib/orderbag.jpg"),
                      fit: BoxFit
                          .cover, // Ensures the image fits inside the circle
                    ),
                  ),
                ),

                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Order Summary',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('Food item Names',
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Text('Qty: 3',
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('2972 Westheimer Rd, Santa Ana, Illinois 85486',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
            SizedBox(height: 10),
            Text('Total Amount                            ₹1,699.0',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildUPIOptions() {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            leading: Container(
              height:
                  35, // Adjusted to make the circle big enough for the image
              width: 35, // Same as height for a perfect circle
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("lib/gpay.jpg"),
                  fit: BoxFit.cover, // Ensures the image fits inside the circle
                ),
              ),
            ),
            title: Text('Google Pay'),
            trailing: Radio<String>(
              value: 'google_pay',
              groupValue: _selectedUPIOption,
              onChanged: (value) {
                setState(() {
                  _selectedUPIOption = value;
                });
              },
            ),
          ),
          ListTile(
            leading: Container(
              height:
                  35, // Adjusted to make the circle big enough for the image
              width: 35, // Same as height for a perfect circle
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("lib/phonepay.jpg"),
                  fit: BoxFit.cover, // Ensures the image fits inside the circle
                ),
              ),
            ),
            title: Text('PhonePe'),
            trailing: Radio<String>(
              value: 'phone_pe',
              groupValue: _selectedUPIOption,
              onChanged: (value) {
                setState(() {
                  _selectedUPIOption = value;
                });
              },
            ),
          ),
          ListTile(
            //leading: Icon(Icons.add, color: Colors.orange),
            leading: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                child: Icon(Icons.add, color: Colors.orange),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            title: Center(child: Text('Add New UPI ID')),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildCardOptions() {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            leading: Container(
              height:
                  35, // Adjusted to make the circle big enough for the image
              width: 35, // Same as height for a perfect circle
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("lib/mastercard.jpg"),
                  fit: BoxFit.cover, // Ensures the image fits inside the circle
                ),
              ),
            ),
            title: Text('Axis Bank **** 8395'),
            trailing: Radio<String>(
              value: 'axis_bank',
              groupValue: _selectedCardOption,
              onChanged: (value) {
                setState(() {
                  _selectedCardOption = value;
                });
              },
            ),
          ),
          ListTile(
            leading: Container(
              height:
                  35, // Adjusted to make the circle big enough for the image
              width: 35, // Same as height for a perfect circle
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("lib/visa.png"),
                  fit: BoxFit.cover, // Ensures the image fits inside the circle
                ),
              ),
            ),
            title: Text('HDFC Bank **** 6246'),
            trailing: Radio<String>(
              value: 'hdfc_bank',
              groupValue: _selectedCardOption,
              onChanged: (value) {
                setState(() {
                  _selectedCardOption = value;
                });
              },
            ),
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                child: Icon(Icons.add, color: Colors.orange),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            title: Text('Add New Card'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildMorePaymentOptions() {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('Net Banking'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text('Cash on Delivery'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
