import 'package:flutter/material.dart';
import 'vendor_signup_page.dart'; // Import Vendor Signup Page

class OTPVerificationPage extends StatefulWidget {
  @override
  _OTPVerificationPageState createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  bool _isOtpSent = false;

  // Function to send OTP (simulated, not connected to Firebase)
  void _sendOtp() {
    String phoneNumber = _mobileController.text.trim();

    if (phoneNumber.isNotEmpty) {
      setState(() {
        _isOtpSent = true;  // Simulate OTP sent
      });
    }
  }

  // Function to verify OTP and navigate to Vendor Signup Page
  void _verifyOtp() {
    String otp = _otpController.text.trim();

    if (otp.isNotEmpty) {
      // Simulate OTP verification (always successful)
      // Bypass OTP verification and go to Vendor Signup Page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VendorSignupPage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter the OTP')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mobile Number Field
            if (!_isOtpSent) ...[
              TextField(
                controller: _mobileController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(labelText: 'Enter Mobile Number'),
              ),
              ElevatedButton(
                onPressed: _sendOtp, // Simulate sending OTP
                child: Text('Send OTP'),
              ),
            ],

            // OTP Field
            if (_isOtpSent) ...[
              TextField(
                controller: _otpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter OTP'),
              ),
              ElevatedButton(
                onPressed: _verifyOtp, // Simulate OTP verification and navigate
                child: Text('Verify OTP'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
