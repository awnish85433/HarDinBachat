import 'package:flutter/material.dart';
import 'otp_verification_page.dart'; // Import OTP Verification Page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Show Splash Screen first
    );
  }
}

// Splash Screen (Shows for 2 seconds)
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // After 2 seconds, navigate to OTP Verification Page
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OTPVerificationPage()), // Navigate to OTP page
      );
    });

    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to HarDin Bachat ', // Welcome text
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue, // Text color
          ),
        ),
      ),
    );
  }
}
