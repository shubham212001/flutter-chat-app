// import 'dart:io';
// import 'package:digichat/screens/ErrorScreens.dart';
// import 'package:digichat/screens/enterOTP.dart';
// import 'package:flutter/material.dart';

// Route<dynamic> generateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case enterOtpScreen.routeName:
//       final verificationId = settings.arguments as String;
//       return MaterialPageRoute(
//         builder: (context) => enterOtpScreen(
//           verificationID: verificationId,
//           verificationID: '',
//         ),
//       );

//     default:
//       return MaterialPageRoute(
//         builder: (context) => const Scaffold(
//           body: ErrorScreen(error: 'This page doesn\'t exist'),
//         ),
//   }
// }
