import 'dart:async';
import 'package:flutter/material.dart';
import 'package:information_student/screen/home.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int _countdown = 5;
  late Timer _timer;
  final TextEditingController otpController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdown > 0) {
        setState(() {
          _countdown--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  void _resetCountdown() {
    setState(() {
      _countdown = 9;
    });
    _startCountdown();
  }

  @override
  void dispose() {
    _timer.cancel();
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 125, 39, 218), // Gradient start color
              Color.fromARGB(255, 71, 16, 97), // Gradient end color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/en/9/98/AUPP_Logo.png",
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'OTP Verification',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'OTP will expire in $_countdown seconds',
                      style: const TextStyle(fontSize: 16, color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: otpController,
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      decoration: InputDecoration(
                        labelText: 'Enter OTP',
                        hintText: '4-digit code',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed:
                            _countdown == 0
                                ? () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyHome(),
                                    ),
                                  );
                                }
                                : null, // Disable button until countdown ends
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6A11CB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: const Text(
                          'Okay',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed:
                          _countdown == 0
                              ? () {
                                _resetCountdown();
                              }
                              : null, // Disable button until countdown ends
                      child: const Text(
                        'Send Code Again',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6A11CB),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
