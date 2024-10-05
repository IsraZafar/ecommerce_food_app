import 'package:ecommercefood/signin.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.green.withOpacity(0.5),
                          BlendMode.srcATop,
                        ),
                        child: Image.asset("assets/images/Group 33.png"),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'DESHI MART',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(height: 10),
                      Image.asset("assets/images/Group 35.png"),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        height: 300,
                        padding: EdgeInsets.all(16.0),
                        color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome To Our Store',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Get your Grocery in as fast as one hour.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 20), // Space before the button
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Rounded corners
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40,
                                      vertical: 12), // Button padding
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Signin(), // Change HomeScreen to your target widget
                                    ),
                                  );
                                },
                                child: Text(
                                  'Get Started', // Add button text here
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
