import 'package:flutter/material.dart';

class VendorSignupPage extends StatefulWidget {
  @override
  _VendorSignupPageState createState() => _VendorSignupPageState();
}

class _VendorSignupPageState extends State<VendorSignupPage> {
  final TextEditingController _vendorNameController = TextEditingController();
  final TextEditingController _shopNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _gstNumberController = TextEditingController();

  void _submitVendorDetails() {
    String vendorName = _vendorNameController.text.trim();
    String shopName = _shopNameController.text.trim();
    String mobile = _mobileController.text.trim();
    String address = _addressController.text.trim();
    String gstNumber = _gstNumberController.text.trim();

    if (vendorName.isNotEmpty &&
        shopName.isNotEmpty &&
        mobile.isNotEmpty &&
        address.isNotEmpty &&
        gstNumber.isNotEmpty) {
      // You can save these details to your database (Firebase or MySQL) here.
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Vendor Registered')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please fill all fields')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor Signup'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Vendor Name:'),
            TextField(controller: _vendorNameController),
            SizedBox(height: 10),
            Text('Shop Name:'),
            TextField(controller: _shopNameController),
            SizedBox(height: 10),
            Text('Mobile Number:'),
            TextField(controller: _mobileController),
            SizedBox(height: 10),
            Text('Address:'),
            TextField(controller: _addressController),
            SizedBox(height: 10),
            Text('GST Number:'),
            TextField(controller: _gstNumberController),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitVendorDetails,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
