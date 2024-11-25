// import 'package:flutter/material.dart';
// import 'package:myapp/screens/formScreen.dart';

// class UserRoleScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFffd07e), // Set background color
//       appBar: AppBar(
//         title: Text('Who will you be using this app as?'),
//         backgroundColor: Color(0xFFffd07e), // Set app bar color
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(1.0),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Column for first and third images
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   SizedBox(height: 100),
//                   _buildOptionImage(
//                     context,
//                     'assets/Healthcare_worker.png',
//                     width: 230,
//                     height: 230,
//                   ),
//                   SizedBox(height: 10), // Custom space between images
//                   _buildOptionImage(
//                     context,
//                     'assets/Vendor.png',
//                     width: 230,
//                     height: 230,
//                   ),
//                 ],
//               ),
//               // Column for second and fourth images
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 100),
//                   _buildOptionImage(
//                     context,
//                     'assets/Student.png',
//                     width: 230,
//                     height: 230,
//                   ),
//                   SizedBox(height: 10), // Custom space between images
//                   _buildOptionImage(
//                     context,
//                     'assets/HR_Recruiter.png',
//                     width: 230,
//                     height: 230,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildOptionImage(BuildContext context, String imagePath, {double width = 100, double height = 100}) {
//     return GestureDetector(
//       onTap: () {
//         // Navigate to registration form
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => RegistrationScreen(role: imagePath), // Pass role dynamically
//           ),
//         );
//       },
//       child: Image.asset(
//         imagePath,
//         width: width, // Custom width
//         height: height, // Custom height
//         fit: BoxFit.cover, // Ensure the image fits well
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:myapp/screens/formScreen.dart';

class UserRoleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFffd07e), // Set background color
      appBar: AppBar(
        title: Text('Who will you be using this app as?'),
        backgroundColor: Color(0xFFffd07e), // Set app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Align columns closely
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Column for first and third images
              Padding(
                padding: const EdgeInsets.only(left: 30.0), // Add spacing manually
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: screenHeight * 0.05), // Top spacing
                    _buildOptionImage(
                      context,
                      'assets/Healthcare_worker.png',
                      width: screenWidth * 0.6,
                      height: screenWidth * 0.6,
                    ),
                    SizedBox(height: screenHeight * 0.03), // Space between images
                    _buildOptionImage(
                      context,
                      'assets/Vendor.png',
                      width: screenWidth * 0.6,
                      height: screenWidth * 0.6,
                    ),
                  ],
                ),
              ),
              // Column for second and fourth images
              Padding(
                padding: const EdgeInsets.only(right: 10.0), // Add spacing manually
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.05), // Top spacing
                    _buildOptionImage(
                      context,
                      'assets/Student.png',
                      width: screenWidth * 0.6,
                      height: screenWidth * 0.6,
                    ),
                    SizedBox(height: screenHeight * 0.03), // Space between images
                    _buildOptionImage(
                      context,
                      'assets/HR_Recruiter.png',
                      width: screenWidth * 0.6,
                      height: screenWidth * 0.6,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionImage(BuildContext context, String imagePath, {required double width, required double height}) {
    return GestureDetector(
      onTap: () {
        // Navigate to registration form
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RegistrationScreen(role: imagePath), // Pass role dynamically
          ),
        );
      },
      child: Image.asset(
        imagePath,
        width: width, // Responsive larger width
        height: height, // Responsive larger height
        fit: BoxFit.cover, // Ensure the image fits well
      ),
    );
  }
}
