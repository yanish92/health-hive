// lib/screens/splash_screen.dart

import 'package:flutter/material.dart';
import 'package:myapp/screens/UserRoleScreen.dart';
import 'dart:async';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    // Navigate to home screen after 3 seconds
    Timer(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => UserRoleScreen()),
      );
    });
  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Image.asset('assets/Logo.png'),
//             Image.asset('assets/Logo2.png',width: 100, // Set width
//                 height: 100, // Set height
//               ),
//             const SizedBox(height: 10),
//             const CircularProgressIndicator(), // Optional loading indicator
//           ],
//         ),
//       ),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center images horizontally
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Center images vertically
              children: [
                Image.asset(
                  'assets/Logo.png',
                  width: 100, // Set width
                  height: 100, // Set height
                ),
                SizedBox(width: 20), // Add spacing between the two images
                Image.asset(
                  'assets/Logo2.png',
                  width: 150, // Set width
                  height: 100, // Set height
                ),
              ],
            ),
            const SizedBox(
                height: 20), // Space between images and progress indicator
            const CircularProgressIndicator(), // Optional loading indicator
          ],
        ),
      ),
    );
  }
}
